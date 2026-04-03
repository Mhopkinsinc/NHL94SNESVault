import { decompress, identifyCompression, NotImplementedError } from "./decompress";
import { renderImage, renderTileGrid, TileRenderOptions, PixelFormat, RGB, parseSNESPalette } from "./snes-tiles";
import { parseFrame, renderFrame, FRAME_COUNT } from "./sprite-frame";
import { parseTeamLogo, renderTeamLogo, TEAM_COUNT, TEAM_NAMES } from "./team-logos";
import {
  decompressSetupBlob, parseSetupLogo, renderSetupLogo, getFrameCount,
  TEAM_COUNT as SETUP_TEAM_COUNT, TEAM_NAMES as SETUP_TEAM_NAMES,
} from "./game-setup-logos";
import {
  loadPlayerPortraitSource,
  PLAYER_PORTRAITS_PER_TEAM,
} from "./player-portraits";

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

// --- Team Logo - Center Ice mode elements ---
const teamLogoControls = document.getElementById("teamLogoControls") as HTMLDivElement;
const teamSelect = document.getElementById("teamSelect") as HTMLSelectElement;
const teamPrevBtn = document.getElementById("teamPrev") as HTMLButtonElement;
const teamNextBtn = document.getElementById("teamNext") as HTMLButtonElement;
const teamScaleInput = document.getElementById("teamScale") as HTMLInputElement;
const teamPaletteInput = document.getElementById("teamPaletteInput") as HTMLInputElement;

// --- Team Logo - Game Setup mode elements ---
const setupLogoControls = document.getElementById("setupLogoControls") as HTMLDivElement;
const setupTeamSelect = document.getElementById("setupTeamSelect") as HTMLSelectElement;
const setupPrevBtn = document.getElementById("setupPrev") as HTMLButtonElement;
const setupNextBtn = document.getElementById("setupNext") as HTMLButtonElement;
const setupSideSelect = document.getElementById("setupSide") as HTMLSelectElement;
const setupScaleInput = document.getElementById("setupScale") as HTMLInputElement;
const setupPaletteInput = document.getElementById("setupPaletteInput") as HTMLInputElement;

// --- Player Portraits elements ---
const playerPortraitControls = document.getElementById("playerPortraitControls") as HTMLDivElement;
const portraitTeamSelect = document.getElementById("portraitTeamSelect") as HTMLSelectElement;
const portraitSelect = document.getElementById("portraitSelect") as HTMLSelectElement;
const portraitTilesWideInput = document.getElementById("portraitTilesWide") as HTMLInputElement;
const portraitScaleInput = document.getElementById("portraitScale") as HTMLInputElement;
const portraitFormatSelect = document.getElementById("portraitFormat") as HTMLSelectElement;
const portraitPaletteInput = document.getElementById("portraitPaletteInput") as HTMLInputElement;
const portraitLoadBtn = document.getElementById("portraitLoadBtn") as HTMLButtonElement;

// Populate team dropdowns
for (let i = 0; i < TEAM_COUNT; i++) {
  const opt = document.createElement("option");
  opt.value = String(i);
  opt.textContent = `${i}: ${TEAM_NAMES[i]}`;
  teamSelect.appendChild(opt);

  const portraitOpt = document.createElement("option");
  portraitOpt.value = String(i);
  portraitOpt.textContent = `${i}: ${TEAM_NAMES[i]}`;
  portraitTeamSelect.appendChild(portraitOpt);
}
for (let i = 0; i < SETUP_TEAM_COUNT; i++) {
  const opt = document.createElement("option");
  opt.value = String(i);
  opt.textContent = `${i}: ${SETUP_TEAM_NAMES[i]}`;
  setupTeamSelect.appendChild(opt);
}
for (let i = 1; i <= PLAYER_PORTRAITS_PER_TEAM; i++) {
  const opt = document.createElement("option");
  opt.value = String(i);
  opt.textContent = String(i);
  portraitSelect.appendChild(opt);
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
let setupBlob: Uint8Array | null = null;
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
  setupLogoControls.style.display = mode === "setup-logos" ? "" : "none";
  playerPortraitControls.style.display = mode === "player-portraits" ? "" : "none";
  stopAutoPlay();

  if (romData) {
    if (mode === "sprite-frame") {
      loadFrame(parseInt(frameIdInput.value) || 1);
    } else if (mode === "team-logos") {
      loadTeamLogo(parseInt(teamSelect.value) || 0);
    } else if (mode === "setup-logos") {
      loadSetupLogo(parseInt(setupTeamSelect.value) || 0);
    } else if (mode === "player-portraits") {
      loadPlayerPortrait(parseInt(portraitTeamSelect.value) || 0, parseInt(portraitSelect.value) || 1);
    }
  }
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
  setupPrevBtn.disabled = false;
  setupNextBtn.disabled = false;
  portraitLoadBtn.disabled = false;

  // Reset cached setup blob when new ROM loaded
  setupBlob = null;
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
// Team Logo - Center Ice mode
// ============================================================

function loadPlayerPortrait(teamIndex: number, portraitIndex: number) {
  if (!romData) return;

  clearStatus();
  hideDebugPanel();

  try {
    const source = loadPlayerPortraitSource(romData, teamIndex, portraitIndex);
    portraitTeamSelect.value = String(teamIndex);
    portraitSelect.value = String(portraitIndex);

    status(`${source.teamName} portrait ${portraitIndex}: $${source.pointerAddress.toString(16).toUpperCase().padStart(6, "0")} -> file offset $${source.fileOffset.toString(16).toUpperCase().padStart(6, "0")}`);

    const compType = identifyCompression(source.compressedData);
    if (compType) {
      status(`Magic: $${compType.name} — ${compType.description}${compType.implemented ? "" : " [NOT IMPLEMENTED]"}`);
    } else {
      const raw = source.compressedData.length >= 2
        ? `$${((source.compressedData[1] << 8) | source.compressedData[0]).toString(16).toUpperCase().padStart(4, "0")}`
        : "(insufficient data)";
      status(`ERROR: Unknown compression magic: ${raw}`);
      return;
    }

    let result;
    try {
      result = decompress(source.compressedData);
    } catch (err) {
      if (err instanceof NotImplementedError) {
        status(`${err.compressionType.name} decompressor is not implemented yet.`);
        const headerLines: string[] = [
          ...source.log,
          `Compression: ${err.compressionType.name} — ${err.compressionType.description}`,
          `Status: NOT IMPLEMENTED`,
          ``,
          `Raw compressed header (first 64 bytes):`,
        ];
        for (let i = 0; i < Math.min(64, source.compressedData.length); i += 16) {
          const hex = Array.from(source.compressedData.slice(i, Math.min(i + 16, source.compressedData.length)))
            .map((b: number) => b.toString(16).padStart(2, "0"))
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

    const logLines: string[] = [...source.log];
    logLines.push(`Compression: $${compType.name} — ${compType.description}`);
    logLines.push(`Source: portrait pointer $${source.pointerAddress.toString(16).toUpperCase().padStart(6, "0")} -> file offset $${source.fileOffset.toString(16).padStart(6, "0")}`);
    logLines.push("");

    for (const line of result.log) {
      logLines.push(line);
    }

    const currentPalVal = portraitPaletteInput.value.trim();
    const isAutoAddr = currentPalVal === "" || currentPalVal === (portraitPaletteInput as HTMLInputElement & { _autoAddr?: string })._autoAddr;
    if (isAutoAddr) {
      portraitPaletteInput.value = source.paletteAddr;
      (portraitPaletteInput as HTMLInputElement & { _autoAddr?: string })._autoAddr = source.paletteAddr;
    }
    const manualPalette = isAutoAddr ? null : parsePaletteFromInput(currentPalVal);
    const palette = manualPalette ?? source.palette;
    logLines.push("");
    if (palette) {
      logLines.push(`Palette (${palette.length} colors):`);
      for (let i = 0; i < palette.length; i++) {
        const [r, g, b] = palette[i];
        logLines.push(`  ${i.toString().padStart(2)}: rgb(${r}, ${g}, ${b})`);
      }
    } else {
      logLines.push("Using default grayscale palette");
    }

    const format = portraitFormatSelect.value as PixelFormat;
    const tilesWide = parseInt(portraitTilesWideInput.value) || 6;
    const scale = parseInt(portraitScaleInput.value) || 4;

    const opts: TileRenderOptions = { format, tilesWide, scale, palette: palette ?? undefined };
    const bpt = format === "bitplane2" ? 16 : 32;
    const tileCount = Math.floor(result.data.length / bpt);

    logLines.push("");
    logLines.push(`Rendering ${tileCount} tiles (${format}, ${tilesWide} wide, ${scale}x scale)`);

    const info = renderImage(imageCanvas, result.data, opts);
    logLines.push(`Image: ${tilesWide * 8}x${info.tilesHigh * 8} pixels (${tilesWide}x${info.tilesHigh} tiles)`);

    renderTileGrid(tilesCanvas, result.data, opts);

    status(`${source.teamName} portrait ${portraitIndex}: decompressed ${result.data.length} bytes -> ${tileCount} tiles (${tilesWide}x${info.tilesHigh})`);

    populateDebugPanel(logLines, result.data);
    showDebugPanel();
  } catch (err) {
    status(`ERROR: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
  }
}

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

// Keyboard navigation: left/right arrows when in team logo mode
document.addEventListener("keydown", (e) => {
  if (modeSelect.value !== "team-logos" || !romData) return;
  if (document.activeElement?.tagName === "INPUT" || document.activeElement?.tagName === "SELECT") return;

  if (e.key === "ArrowLeft") {
    e.preventDefault();
    const idx = Math.max(0, (parseInt(teamSelect.value) || 0) - 1);
    loadTeamLogo(idx);
  } else if (e.key === "ArrowRight") {
    e.preventDefault();
    const idx = Math.min(TEAM_COUNT - 1, (parseInt(teamSelect.value) || 0) + 1);
    loadTeamLogo(idx);
  }
});

portraitTeamSelect.addEventListener("change", () => {
  loadPlayerPortrait(parseInt(portraitTeamSelect.value) || 0, parseInt(portraitSelect.value) || 1);
});

portraitSelect.addEventListener("change", () => {
  loadPlayerPortrait(parseInt(portraitTeamSelect.value) || 0, parseInt(portraitSelect.value) || 1);
});

portraitLoadBtn.addEventListener("click", () => {
  loadPlayerPortrait(parseInt(portraitTeamSelect.value) || 0, parseInt(portraitSelect.value) || 1);
});

// Keyboard navigation: left/right arrows when in player portraits mode
document.addEventListener("keydown", (e) => {
  if (modeSelect.value !== "player-portraits" || !romData) return;
  if (document.activeElement?.tagName === "INPUT" || document.activeElement?.tagName === "SELECT") return;

  if (e.key === "ArrowLeft") {
    e.preventDefault();
    let teamIndex = parseInt(portraitTeamSelect.value) || 0;
    let portraitIndex = parseInt(portraitSelect.value) || 1;

    if (portraitIndex > 1) {
      portraitIndex -= 1;
    } else if (teamIndex > 0) {
      teamIndex -= 1;
      portraitIndex = PLAYER_PORTRAITS_PER_TEAM;
    }

    loadPlayerPortrait(teamIndex, portraitIndex);
  } else if (e.key === "ArrowRight") {
    e.preventDefault();
    let teamIndex = parseInt(portraitTeamSelect.value) || 0;
    let portraitIndex = parseInt(portraitSelect.value) || 1;

    if (portraitIndex < PLAYER_PORTRAITS_PER_TEAM) {
      portraitIndex += 1;
    } else if (teamIndex < TEAM_COUNT - 1) {
      teamIndex += 1;
      portraitIndex = 1;
    }

    loadPlayerPortrait(teamIndex, portraitIndex);
  }
});

// ============================================================
// Team Logo - Game Setup mode
// ============================================================

function ensureSetupBlob(): Uint8Array | null {
  if (!romData) return null;
  if (setupBlob) return setupBlob;

  try {
    const result = decompressSetupBlob(romData);
    setupBlob = result.data;
    const frameCount = getFrameCount(setupBlob);
    status(`Decompressed game setup blob: ${setupBlob.length} bytes, ${frameCount} frame entries`);
    for (const line of result.log) status(line);
    return setupBlob;
  } catch (err) {
    status(`ERROR decompressing setup blob: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
    return null;
  }
}

function loadSetupLogo(teamIndex: number) {
  if (!romData) return;

  clearStatus();
  hideDebugPanel();

  const blob = ensureSetupBlob();
  if (!blob) return;

  try {
    const side = setupSideSelect.value as "home" | "away";
    const logo = parseSetupLogo(romData, blob, teamIndex, side);
    setupTeamSelect.value = String(teamIndex);

    const scale = parseInt(setupScaleInput.value) || 8;

    // Auto-load per-team palette address; user can override by typing a different address
    // We track whether the current value was auto-set so we can replace it on team change
    const currentPalVal = setupPaletteInput.value.trim();
    const isAutoAddr = currentPalVal === "" || currentPalVal === (setupPaletteInput as any)._autoAddr;
    if (isAutoAddr) {
      setupPaletteInput.value = logo.paletteAddr;
      (setupPaletteInput as any)._autoAddr = logo.paletteAddr;
    }
    const manualPalette = isAutoAddr ? null : parsePaletteFromInput(currentPalVal);
    const palette = manualPalette ?? logo.palette;

    const dims = renderSetupLogo(imageCanvas, logo, scale, palette);

    // Render individual tiles in the tile grid
    if (logo.tileData.length > 0) {
      const tileOpts: TileRenderOptions = {
        format: "bitplane4",
        tilesWide: Math.min(Math.floor(logo.tileData.length / 32), 12),
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
    const frameCount = getFrameCount(blob);
    const flagNote = (logo.flag & 0x80) === 0
      ? ` [no inline tiles — VRAM pre-loaded]`
      : "";
    status(`${logo.teamName} (${side}): ${logo.numSprites} sprites, ${tileCount} tiles, ${dims.width}x${dims.height}px${flagNote}`);
    status(`Blob: ${frameCount} total frame entries`);

    populateDebugPanel(logo.log, logo.tileData);
    showDebugPanel();
  } catch (err) {
    status(`ERROR: ${err instanceof Error ? err.message : String(err)}`);
    console.error(err);
  }
}

setupTeamSelect.addEventListener("change", () => {
  loadSetupLogo(parseInt(setupTeamSelect.value) || 0);
});

setupSideSelect.addEventListener("change", () => {
  loadSetupLogo(parseInt(setupTeamSelect.value) || 0);
});

setupPrevBtn.addEventListener("click", () => {
  const idx = Math.max(0, (parseInt(setupTeamSelect.value) || 0) - 1);
  loadSetupLogo(idx);
});

setupNextBtn.addEventListener("click", () => {
  const idx = Math.min(SETUP_TEAM_COUNT - 1, (parseInt(setupTeamSelect.value) || 0) + 1);
  loadSetupLogo(idx);
});

// Keyboard navigation: left/right arrows when in game setup logo mode
document.addEventListener("keydown", (e) => {
  if (modeSelect.value !== "setup-logos" || !romData) return;
  if (document.activeElement?.tagName === "INPUT" || document.activeElement?.tagName === "SELECT") return;

  if (e.key === "ArrowLeft") {
    e.preventDefault();
    const idx = Math.max(0, (parseInt(setupTeamSelect.value) || 0) - 1);
    loadSetupLogo(idx);
  } else if (e.key === "ArrowRight") {
    e.preventDefault();
    const idx = Math.min(SETUP_TEAM_COUNT - 1, (parseInt(setupTeamSelect.value) || 0) + 1);
    loadSetupLogo(idx);
  }
});
