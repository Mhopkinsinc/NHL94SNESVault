import { decompress, identifyCompression, NotImplementedError } from "./decompress";
import { renderImage, renderTileGrid, TileRenderOptions, PixelFormat, RGB, parseSNESPalette } from "./snes-tiles";
import { parseFrame, renderFrame, FRAME_COUNT } from "./sprite-frame";
import { parseTeamLogo, renderTeamLogo, TEAM_COUNT, TEAM_NAMES } from "./team-logos";

// --- Shared elements ---
const romFileInput = document.getElementById("romFile") as HTMLInputElement;
const modeSelect = document.getElementById("mode") as HTMLSelectElement;
const debugToggle = document.getElementById("debugToggle") as HTMLButtonElement;
const statusDiv = document.getElementById("status") as HTMLDivElement;
const imageCanvas = document.getElementById("imageCanvas") as HTMLCanvasElement;
const tilesCanvas = document.getElementById("tilesCanvas") as HTMLCanvasElement;

// --- Decompress mode elements ---
const decompressControls = document.getElementById("decompressControls") as HTMLDivElement;
const snesAddrInput = document.getElementById("snesAddr") as HTMLInputElement;
const tilesWideInput = document.getElementById("tilesWide") as HTMLInputElement;
const scaleInput = document.getElementById("scale") as HTMLInputElement;
const formatSelect = document.getElementById("format") as HTMLSelectElement;
const paletteInput = document.getElementById("paletteInput") as HTMLInputElement;
const decompressBtn = document.getElementById("decompressBtn") as HTMLButtonElement;

// --- Sprite Frame mode elements ---
const spriteFrameControls = document.getElementById("spriteFrameControls") as HTMLDivElement;
const frameIdInput = document.getElementById("frameId") as HTMLInputElement;
const framePrevBtn = document.getElementById("framePrev") as HTMLButtonElement;
const frameNextBtn = document.getElementById("frameNext") as HTMLButtonElement;
const frameGoBtn = document.getElementById("frameGo") as HTMLButtonElement;
const frameScaleInput = document.getElementById("frameScale") as HTMLInputElement;
const framePaletteInput = document.getElementById("framePaletteInput") as HTMLInputElement;
const autoPlayCheck = document.getElementById("autoPlay") as HTMLInputElement;
const autoPlaySpeedInput = document.getElementById("autoPlaySpeed") as HTMLInputElement;

// --- Team Logo mode elements ---
const teamLogoControls = document.getElementById("teamLogoControls") as HTMLDivElement;
const teamSelect = document.getElementById("teamSelect") as HTMLSelectElement;
const teamPrevBtn = document.getElementById("teamPrev") as HTMLButtonElement;
const teamNextBtn = document.getElementById("teamNext") as HTMLButtonElement;
const teamScaleInput = document.getElementById("teamScale") as HTMLInputElement;
const teamPaletteInput = document.getElementById("teamPaletteInput") as HTMLInputElement;

// Populate team dropdown
for (let i = 0; i < TEAM_COUNT; i++) {
  const opt = document.createElement("option");
  opt.value = String(i);
  opt.textContent = `${i}: ${TEAM_NAMES[i]}`;
  teamSelect.appendChild(opt);
}

// --- Debug panel elements ---
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
let autoPlayTimer: ReturnType<typeof setInterval> | null = null;

// ============================================================
// Debug panel
// ============================================================

debugToggle.addEventListener("click", () => {
  if (!debugHasData) return;
  debugUserCollapsed = debugBody.style.display !== "none";
  debugBody.style.display = debugUserCollapsed ? "none" : "";
  debugToggle.classList.toggle("active", !debugUserCollapsed);
});

debugTabs.forEach((tab) => {
  tab.addEventListener("click", () => {
    debugTabs.forEach((t) => t.classList.remove("active"));
    tab.classList.add("active");
    tabLog.classList.toggle("active", tab.dataset.tab === "log");
    tabHexdump.classList.toggle("active", tab.dataset.tab === "hexdump");
    tabRaw.classList.toggle("active", tab.dataset.tab === "raw");
  });
});

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

function status(msg: string) {
  statusDiv.textContent += msg + "\n";
  statusDiv.scrollTop = statusDiv.scrollHeight;
}

function clearStatus() {
  statusDiv.textContent = "";
}

function setActiveTab(tabName: string) {
  debugTabs.forEach((t) => t.classList.toggle("active", t.dataset.tab === tabName));
  tabLog.classList.toggle("active", tabName === "log");
  tabHexdump.classList.toggle("active", tabName === "hexdump");
  tabRaw.classList.toggle("active", tabName === "raw");
}

function populateDebugPanel(logLines: string[], data: Uint8Array) {
  tabLog.textContent = logLines.join("\n");

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

// ============================================================
// Address parsing
// ============================================================

function snesLoROMToFileOffset(bank: number, addr: number): number {
  return ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
}

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

function parsePaletteFromInput(input: string): RGB[] | null {
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

// ============================================================
// Mode switching
// ============================================================

function updateModeUI() {
  const mode = modeSelect.value;
  decompressControls.style.display = mode === "decompress" ? "" : "none";
  spriteFrameControls.style.display = mode === "sprite-frame" ? "" : "none";
  teamLogoControls.style.display = mode === "team-logos" ? "" : "none";
  stopAutoPlay();
}

modeSelect.addEventListener("change", updateModeUI);

// ============================================================
// ROM loading
// ============================================================

romFileInput.addEventListener("change", async () => {
  const file = romFileInput.files?.[0];
  if (!file) return;

  const buffer = await file.arrayBuffer();
  romData = new Uint8Array(buffer);
  clearStatus();
  hideDebugPanel();
  status(`Loaded ROM: ${file.name} (${romData.length} bytes / $${romData.length.toString(16)} hex)`);

  // Enable controls
  decompressBtn.disabled = false;
  frameGoBtn.disabled = false;
  framePrevBtn.disabled = false;
  frameNextBtn.disabled = false;
  teamPrevBtn.disabled = false;
  teamNextBtn.disabled = false;
});

// ============================================================
// Decompress mode
// ============================================================

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

    let result;
    try {
      result = decompress(compressedData);
    } catch (err) {
      if (err instanceof NotImplementedError) {
        status(`${err.compressionType.name} decompressor is not implemented yet.`);
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

    const logLines: string[] = [];
    logLines.push(`Compression: $${compType.name} — ${compType.description}`);
    logLines.push(`Source: ${snesAddrInput.value} -> file offset $${fileOffset.toString(16).padStart(6, "0")}`);
    logLines.push(``);

    for (const line of result.log) {
      logLines.push(line);
    }

    const palette = parsePaletteFromInput(paletteInput.value.trim());
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

    status(`Decompressed ${result.data.length} bytes -> ${tileCount} tiles (${tilesWide}x${info.tilesHigh})`);

    populateDebugPanel(logLines, result.data);
    showDebugPanel();
  } catch (err) {
    status(`ERROR: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
  }
});

// ============================================================
// Sprite Frame Browser mode
// ============================================================

function loadFrame(frameId: number) {
  if (!romData) return;

  clearStatus();
  hideDebugPanel();

  try {
    const frame = parseFrame(romData, frameId);
    frameIdInput.value = String(frameId);

    const scale = parseInt(frameScaleInput.value) || 6;
    const palette = parsePaletteFromInput(framePaletteInput.value.trim());

    // Render composed sprite to the main canvas
    const dims = renderFrame(imageCanvas, frame, scale, palette ?? undefined);

    // Also render individual tiles in the tile grid
    if (frame.tileData.length > 0) {
      const tileOpts: TileRenderOptions = {
        format: "bitplane4",
        tilesWide: Math.min(frame.header.numTiles, 12),
        scale: Math.max(scale - 1, 2),
        palette: palette ?? undefined,
      };
      renderTileGrid(tilesCanvas, frame.tileData, tileOpts);
    } else {
      const ctx = tilesCanvas.getContext("2d")!;
      tilesCanvas.width = 1;
      tilesCanvas.height = 1;
      ctx.clearRect(0, 0, 1, 1);
    }

    const flagNote = (frame.header.flag & 0x80) === 0
      ? ` [flag=$${frame.header.flag.toString(16)} — VRAM pre-loaded, no inline tiles]`
      : "";
    status(`Frame ${frameId}/${FRAME_COUNT}: ${frame.header.numSprites} sprites, ${frame.header.numTiles} tiles, ${dims.width}x${dims.height}px${flagNote}`);

    populateDebugPanel(frame.log, frame.tileData);
    showDebugPanel();
  } catch (err) {
    status(`ERROR: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
  }
}

frameGoBtn.addEventListener("click", () => {
  loadFrame(parseInt(frameIdInput.value) || 1);
});

frameIdInput.addEventListener("keydown", (e) => {
  if (e.key === "Enter") loadFrame(parseInt(frameIdInput.value) || 1);
});

framePrevBtn.addEventListener("click", () => {
  const id = Math.max(1, (parseInt(frameIdInput.value) || 1) - 1);
  loadFrame(id);
});

frameNextBtn.addEventListener("click", () => {
  const id = Math.min(FRAME_COUNT, (parseInt(frameIdInput.value) || 1) + 1);
  loadFrame(id);
});

// Keyboard navigation: left/right arrows when in sprite frame mode
document.addEventListener("keydown", (e) => {
  if (modeSelect.value !== "sprite-frame" || !romData) return;
  if (document.activeElement?.tagName === "INPUT" && document.activeElement !== frameIdInput) return;

  if (e.key === "ArrowLeft") {
    e.preventDefault();
    const id = Math.max(1, (parseInt(frameIdInput.value) || 1) - 1);
    loadFrame(id);
  } else if (e.key === "ArrowRight") {
    e.preventDefault();
    const id = Math.min(FRAME_COUNT, (parseInt(frameIdInput.value) || 1) + 1);
    loadFrame(id);
  }
});

// Auto-play
function stopAutoPlay() {
  if (autoPlayTimer !== null) {
    clearInterval(autoPlayTimer);
    autoPlayTimer = null;
  }
  autoPlayCheck.checked = false;
}

autoPlayCheck.addEventListener("change", () => {
  if (autoPlayCheck.checked) {
    const speed = parseInt(autoPlaySpeedInput.value) || 200;
    autoPlayTimer = setInterval(() => {
      const id = (parseInt(frameIdInput.value) || 1) + 1;
      if (id > FRAME_COUNT) {
        stopAutoPlay();
        return;
      }
      loadFrame(id);
    }, speed);
  } else {
    stopAutoPlay();
  }
});

autoPlaySpeedInput.addEventListener("change", () => {
  if (autoPlayCheck.checked) {
    stopAutoPlay();
    autoPlayCheck.checked = true;
    autoPlayCheck.dispatchEvent(new Event("change"));
  }
});

// ============================================================
// Team Logo Browser mode
// ============================================================

function loadTeamLogo(teamIndex: number) {
  if (!romData) return;

  clearStatus();
  hideDebugPanel();

  try {
    const logo = parseTeamLogo(romData, teamIndex);
    teamSelect.value = String(teamIndex);

    const scale = parseInt(teamScaleInput.value) || 8;
    const manualPalette = parsePaletteFromInput(teamPaletteInput.value.trim());
    const palette = manualPalette ?? logo.palette;

    const dims = renderTeamLogo(imageCanvas, logo, scale, palette);

    // Render individual tiles in the tile grid
    if (logo.tileData.length > 0) {
      const tileOpts: TileRenderOptions = {
        format: "nibble",
        tilesWide: 8,
        scale: Math.max(scale - 2, 2),
        palette,
      };
      renderTileGrid(tilesCanvas, logo.tileData, tileOpts);
    } else {
      const ctx = tilesCanvas.getContext("2d")!;
      tilesCanvas.width = 1;
      tilesCanvas.height = 1;
      ctx.clearRect(0, 0, 1, 1);
    }

    const tileCount = Math.floor(logo.tileData.length / 32);
    status(`${logo.teamName}: ${logo.widthTiles}x${logo.heightTiles} tiles (${tileCount} unique tiles), ${dims.width}x${dims.height}px`);

    populateDebugPanel(logo.log, logo.tileData);
    showDebugPanel();
  } catch (err) {
    status(`ERROR: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
  }
}

teamSelect.addEventListener("change", () => {
  loadTeamLogo(parseInt(teamSelect.value) || 0);
});

teamPrevBtn.addEventListener("click", () => {
  const idx = Math.max(0, (parseInt(teamSelect.value) || 0) - 1);
  loadTeamLogo(idx);
});

teamNextBtn.addEventListener("click", () => {
  const idx = Math.min(TEAM_COUNT - 1, (parseInt(teamSelect.value) || 0) + 1);
  loadTeamLogo(idx);
});
