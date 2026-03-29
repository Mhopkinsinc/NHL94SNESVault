import { decompress, identifyCompression, NotImplementedError } from "./decompress";
import { renderImage, renderTileGrid, TileRenderOptions, PixelFormat, RGB, parseSNESPalette } from "./snes-tiles";

const romFileInput = document.getElementById("romFile") as HTMLInputElement;
const snesAddrInput = document.getElementById("snesAddr") as HTMLInputElement;
const tilesWideInput = document.getElementById("tilesWide") as HTMLInputElement;
const scaleInput = document.getElementById("scale") as HTMLInputElement;
const formatSelect = document.getElementById("format") as HTMLSelectElement;
const paletteInput = document.getElementById("paletteInput") as HTMLInputElement;
const decompressBtn = document.getElementById("decompressBtn") as HTMLButtonElement;
const debugToggle = document.getElementById("debugToggle") as HTMLButtonElement;
const statusDiv = document.getElementById("status") as HTMLDivElement;
const imageCanvas = document.getElementById("imageCanvas") as HTMLCanvasElement;
const tilesCanvas = document.getElementById("tilesCanvas") as HTMLCanvasElement;

// Debug panel elements
const debugPanel = document.getElementById("debugPanel") as HTMLDivElement;
const debugBody = document.getElementById("debugBody") as HTMLDivElement;
const debugInfo = document.getElementById("debugInfo") as HTMLSpanElement;
const copyBtn = document.getElementById("copyBtn") as HTMLButtonElement;
const tabLog = document.getElementById("tabLog") as HTMLDivElement;
const tabHexdump = document.getElementById("tabHexdump") as HTMLDivElement;
const tabRaw = document.getElementById("tabRaw") as HTMLDivElement;
const debugTabs = debugPanel.querySelectorAll<HTMLButtonElement>(".debug-tab");

let romData: Uint8Array | null = null;
let debugHasData = false;
let debugUserCollapsed = false;

// --- Debug toggle button ---
debugToggle.addEventListener("click", () => {
  if (!debugHasData) return;
  debugUserCollapsed = debugBody.style.display !== "none";
  debugBody.style.display = debugUserCollapsed ? "none" : "";
  debugToggle.classList.toggle("active", !debugUserCollapsed);
});

// --- Debug tab switching ---
debugTabs.forEach((tab) => {
  tab.addEventListener("click", () => {
    debugTabs.forEach((t) => t.classList.remove("active"));
    tab.classList.add("active");
    tabLog.classList.toggle("active", tab.dataset.tab === "log");
    tabHexdump.classList.toggle("active", tab.dataset.tab === "hexdump");
    tabRaw.classList.toggle("active", tab.dataset.tab === "raw");
  });
});

// --- Copy button ---
copyBtn.addEventListener("click", () => {
  const activeTab = debugPanel.querySelector(".debug-tab-content.active") as HTMLDivElement | null;
  if (!activeTab || !activeTab.textContent) return;
  navigator.clipboard.writeText(activeTab.textContent).then(() => {
    const original = copyBtn.textContent;
    copyBtn.textContent = "Copied!";
    copyBtn.style.color = "#00d4ff";
    setTimeout(() => {
      copyBtn.textContent = original;
      copyBtn.style.color = "";
    }, 1500);
  });
});

// --- Status bar (brief summary only) ---
function status(msg: string) {
  statusDiv.textContent += msg + "\n";
  statusDiv.scrollTop = statusDiv.scrollHeight;
}

function clearStatus() {
  statusDiv.textContent = "";
}

// --- Debug panel helpers ---
function setActiveTab(tabName: string) {
  debugTabs.forEach((t) => t.classList.toggle("active", t.dataset.tab === tabName));
  tabLog.classList.toggle("active", tabName === "log");
  tabHexdump.classList.toggle("active", tabName === "hexdump");
  tabRaw.classList.toggle("active", tabName === "raw");
}

function populateDebugPanel(logLines: string[], data: Uint8Array) {
  // Log tab
  tabLog.textContent = logLines.join("\n");

  // Hex dump tab: offset | hex | ASCII
  const hexLines: string[] = [];
  for (let i = 0; i < data.length; i += 16) {
    const row = data.slice(i, Math.min(i + 16, data.length));
    const offset = i.toString(16).padStart(6, "0");
    const hex = Array.from(row)
      .map((b) => b.toString(16).padStart(2, "0"))
      .join(" ")
      .padEnd(47);
    const ascii = Array.from(row)
      .map((b) => (b >= 0x20 && b <= 0x7e ? String.fromCharCode(b) : "."))
      .join("");
    hexLines.push(`${offset}  ${hex}  |${ascii}|`);
  }
  tabHexdump.textContent = hexLines.join("\n");

  // Raw tab: uppercase hex bytes, 16 per row
  const rawLines: string[] = [];
  for (let i = 0; i < data.length; i += 16) {
    const row = data.slice(i, Math.min(i + 16, data.length));
    rawLines.push(
      Array.from(row)
        .map((b) => b.toString(16).padStart(2, "0").toUpperCase())
        .join(" ")
    );
  }
  tabRaw.textContent = rawLines.join("\n");

  debugInfo.textContent = `${data.length} bytes ($${data.length.toString(16)})`;
  setActiveTab("log");
}

function showDebugPanel() {
  debugHasData = true;
  debugToggle.disabled = false;
  debugPanel.style.display = "block";
  debugBody.style.display = debugUserCollapsed ? "none" : "";
  debugToggle.classList.toggle("active", !debugUserCollapsed);
}

function hideDebugPanel() {
  debugPanel.style.display = "none";
  debugBody.style.display = "";
  debugToggle.classList.remove("active");
}

/**
 * Parse palette input — supports:
 *  - SNES address (e.g. "9A:F55C") -> reads 32 bytes from ROM
 *  - Raw hex bytes (e.g. "$00,$00,$7B,$6F,...")
 *  - Empty -> returns null (use default palette)
 */
function parsePaletteInput(input: string): RGB[] | null {
  if (!input) return null;

  const hexBytesMatch = input.match(/[\$]?[0-9a-f]{2}/gi);
  if (hexBytesMatch && hexBytesMatch.length >= 32) {
    const bytes = new Uint8Array(
      hexBytesMatch.slice(0, 32).map((s) => parseInt(s.replace("$", ""), 16))
    );
    return parseSNESPalette(bytes);
  }

  if (romData) {
    try {
      const offset = parseSNESAddress(input);
      if (offset + 32 <= romData.length) {
        const bytes = romData.slice(offset, offset + 32);
        return parseSNESPalette(bytes);
      }
    } catch {
      // Not a valid address
    }
  }

  return null;
}

/**
 * Convert SNES LoROM address to file offset.
 */
function snesLoROMToFileOffset(bank: number, addr: number): number {
  return ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
}

/** Parse "BB:AAAA" or "0xNNNNNN" SNES address formats */
function parseSNESAddress(input: string): number {
  const trimmed = input.trim().replace(/^\$/, "");

  const colonMatch = trimmed.match(/^([0-9a-f]{1,2}):([0-9a-f]{1,4})$/i);
  if (colonMatch) {
    const bank = parseInt(colonMatch[1], 16);
    const addr = parseInt(colonMatch[2], 16);
    return snesLoROMToFileOffset(bank, addr);
  }

  const flat = parseInt(trimmed.replace(/^0x/i, ""), 16);
  if (!isNaN(flat)) {
    if (flat > 0x200000) {
      const bank = (flat >> 16) & 0xff;
      const addr = flat & 0xffff;
      return snesLoROMToFileOffset(bank, addr);
    }
    return flat;
  }

  throw new Error(`Cannot parse address: "${input}"`);
}

romFileInput.addEventListener("change", async () => {
  const file = romFileInput.files?.[0];
  if (!file) return;

  const buffer = await file.arrayBuffer();
  romData = new Uint8Array(buffer);
  decompressBtn.disabled = false;
  clearStatus();
  hideDebugPanel();
  status(`Loaded ROM: ${file.name} (${romData.length} bytes / $${romData.length.toString(16)} hex)`);
});

decompressBtn.addEventListener("click", () => {
  if (!romData) return;

  clearStatus();
  hideDebugPanel();

  try {
    const fileOffset = parseSNESAddress(snesAddrInput.value);
    status(`SNES address: ${snesAddrInput.value} -> file offset: $${fileOffset.toString(16).padStart(6, "0")}`);

    if (fileOffset >= romData.length) {
      status(`ERROR: File offset $${fileOffset.toString(16)} exceeds ROM size $${romData.length.toString(16)}`);
      return;
    }

    const maxCompressed = Math.min(0x10000, romData.length - fileOffset);
    const compressedData = romData.slice(fileOffset, fileOffset + maxCompressed);

    // Identify compression type
    const compType = identifyCompression(compressedData);
    if (compType) {
      status(`Magic: $${compType.name} — ${compType.description}${compType.implemented ? "" : " [NOT IMPLEMENTED]"}`);
    } else {
      const raw = compressedData.length >= 2
        ? `$${((compressedData[1] << 8) | compressedData[0]).toString(16).toUpperCase().padStart(4, "0")}`
        : "(insufficient data)";
      status(`ERROR: Unknown compression magic: ${raw}`);
      return;
    }

    // Decompress
    let result;
    try {
      result = decompress(compressedData);
    } catch (err) {
      if (err instanceof NotImplementedError) {
        status(`${err.compressionType.name} decompressor is not implemented yet.`);

        // Show what we can in the debug panel — the raw compressed header
        const headerLines: string[] = [
          `Compression: ${err.compressionType.name} — ${err.compressionType.description}`,
          `Status: NOT IMPLEMENTED`,
          ``,
          `Raw compressed header (first 64 bytes):`,
        ];
        for (let i = 0; i < Math.min(64, compressedData.length); i += 16) {
          const hex = Array.from(compressedData.slice(i, Math.min(i + 16, compressedData.length)))
            .map((b) => b.toString(16).padStart(2, "0"))
            .join(" ");
          headerLines.push(`  ${i.toString(16).padStart(4, "0")}: ${hex}`);
        }

        tabLog.textContent = headerLines.join("\n");
        tabHexdump.textContent = "(no decompressed data)";
        tabRaw.textContent = "(no decompressed data)";
        debugInfo.textContent = "not implemented";
        setActiveTab("log");
        showDebugPanel();
        return;
      }
      throw err;
    }

    // Collect all detail lines for the Log tab
    const logLines: string[] = [];
    logLines.push(`Compression: $${compType.name} — ${compType.description}`);
    logLines.push(`Source: ${snesAddrInput.value} -> file offset $${fileOffset.toString(16).padStart(6, "0")}`);
    logLines.push(``);

    // Decompressor log
    for (const line of result.log) {
      logLines.push(line);
    }

    // Palette info
    const palette = parsePaletteInput(paletteInput.value.trim());
    logLines.push(``);
    if (palette) {
      logLines.push(`Palette (${palette.length} colors):`);
      for (let i = 0; i < palette.length; i++) {
        const [r, g, b] = palette[i];
        logLines.push(`  ${i.toString().padStart(2)}: rgb(${r}, ${g}, ${b})`);
      }
    } else {
      logLines.push("Using default grayscale palette");
    }

    // Render info
    const format = formatSelect.value as PixelFormat;
    const tilesWide = parseInt(tilesWideInput.value);
    const scale = parseInt(scaleInput.value);

    const opts: TileRenderOptions = { format, tilesWide, scale, palette: palette ?? undefined };
    const bpt = format === "bitplane2" ? 16 : 32;
    const tileCount = Math.floor(result.data.length / bpt);

    logLines.push(``);
    logLines.push(`Rendering ${tileCount} tiles (${format}, ${tilesWide} wide, ${scale}x scale)`);

    const info = renderImage(imageCanvas, result.data, opts);
    logLines.push(`Image: ${tilesWide * 8}x${info.tilesHigh * 8} pixels (${tilesWide}x${info.tilesHigh} tiles)`);

    renderTileGrid(tilesCanvas, result.data, opts);

    // Brief status summary
    status(`Decompressed ${result.data.length} bytes -> ${tileCount} tiles (${tilesWide}x${info.tilesHigh})`);

    // Populate and show debug panel
    populateDebugPanel(logLines, result.data);
    showDebugPanel();
  } catch (err) {
    status(`ERROR: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
  }
});
