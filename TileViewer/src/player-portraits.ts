import { TEAM_COUNT, TEAM_NAMES } from "./team-logos";

const PORTRAIT_POINTER_TABLE_OFFSET = 0x0ECD53;
const POINTER_SIZE = 4;

export const PLAYER_PORTRAITS_PER_TEAM = 26;
export const PLAYER_PORTRAIT_TEAM_COUNT = TEAM_COUNT;
export const PLAYER_PORTRAIT_TEAM_NAMES = TEAM_NAMES;

export interface PlayerPortraitSource {
  teamIndex: number;
  teamName: string;
  portraitIndex: number;
  tableOffset: number;
  pointerAddress: number;
  fileOffset: number;
  compressedData: Uint8Array;
  log: string[];
}

function snesLoROMToFile(bank: number, addr: number): number {
  return ((bank & 0x7f) * 0x8000) + (addr & 0x7fff);
}

export function loadPlayerPortraitSource(
  romData: Uint8Array,
  teamIndex: number,
  portraitIndex: number,
): PlayerPortraitSource {
  if (teamIndex < 0 || teamIndex >= PLAYER_PORTRAIT_TEAM_COUNT) {
    throw new Error(`Invalid team index: ${teamIndex}`);
  }

  if (portraitIndex < 1 || portraitIndex > PLAYER_PORTRAITS_PER_TEAM) {
    throw new Error(`Portrait index must be 1-${PLAYER_PORTRAITS_PER_TEAM}: ${portraitIndex}`);
  }

  const entryIndex = (teamIndex * PLAYER_PORTRAITS_PER_TEAM) + (portraitIndex - 1);
  const tableOffset = PORTRAIT_POINTER_TABLE_OFFSET + (entryIndex * POINTER_SIZE);

  if (tableOffset + POINTER_SIZE > romData.length) {
    throw new Error(`Portrait pointer entry exceeds ROM size: $${tableOffset.toString(16).toUpperCase()}`);
  }

  const addr = romData[tableOffset] | (romData[tableOffset + 1] << 8);
  const bank = romData[tableOffset + 2] | (romData[tableOffset + 3] << 8);

  if (addr === 0 && bank === 0) {
    throw new Error(`Portrait pointer is null for team ${teamIndex}, portrait ${portraitIndex}`);
  }

  const pointerAddress = (bank << 16) | addr;
  const fileOffset = snesLoROMToFile(bank, addr);

  if (fileOffset >= romData.length) {
    throw new Error(`Portrait pointer resolves outside ROM: $${pointerAddress.toString(16).toUpperCase()} -> $${fileOffset.toString(16).toUpperCase()}`);
  }

  const maxCompressed = Math.min(0x10000, romData.length - fileOffset);
  const compressedData = romData.slice(fileOffset, fileOffset + maxCompressed);
  const teamName = PLAYER_PORTRAIT_TEAM_NAMES[teamIndex] ?? `Team ${teamIndex}`;

  return {
    teamIndex,
    teamName,
    portraitIndex,
    tableOffset,
    pointerAddress,
    fileOffset,
    compressedData,
    log: [
      `Team ${teamIndex}: ${teamName}`,
      `Portrait: ${portraitIndex}/${PLAYER_PORTRAITS_PER_TEAM}`,
      `Pointer table entry: file offset $${tableOffset.toString(16).toUpperCase().padStart(6, "0")}`,
      `Pointer: $${pointerAddress.toString(16).toUpperCase().padStart(6, "0")} -> file offset $${fileOffset.toString(16).toUpperCase().padStart(6, "0")}`,
    ],
  };
}