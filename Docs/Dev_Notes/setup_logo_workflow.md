# Setup Logo Workflow

This document explains the practical workflow for changing future game setup
logos in this repo.

It is intentionally narrower than
[Docs/Dev_Notes/game_setup_logos_technical.md](c:\_Personal\NHL94SNESVault\Docs\Dev_Notes\game_setup_logos_technical.md).
That file explains the system. This file explains what to do.

## Summary

The safest workflow is:

1. Build or import the logo art as a setup-logo frame.
2. Repack that art into the known-safe Anaheim frame layout.
3. Inject the rebuilt frame into the compressed setup-logo blob.
4. Compile with `Src/32TeamPatch/patch.bat`.
5. Test the roster/setup screen team-switch path.

The important lesson from the Seattle bug is this:

- The visible logo art was not the real problem.
- The frame layout was the real problem.
- A logo can look correct as raw art and still corrupt sprites if its setup-logo
  frame metadata is packed differently from the working runtime layout.

## Files Involved

Core patch files:

- [Src/32TeamPatch/patch_setup_logo.asm](c:\_Personal\NHL94SNESVault\Src\32TeamPatch\patch_setup_logo.asm)
- [Src/32TeamPatch/setup_logo_seattle_fb30.bin](c:\_Personal\NHL94SNESVault\Src\32TeamPatch\setup_logo_seattle_fb30.bin)
- [Src/32TeamPatch/setup_logo_palette_table.bin](c:\_Personal\NHL94SNESVault\Src\32TeamPatch\setup_logo_palette_table.bin)
- [Src/32TeamPatch/Seattle-gamesetup.pal](c:\_Personal\NHL94SNESVault\Src\32TeamPatch\Seattle-gamesetup.pal)

Tooling:

- [TileViewer/replace_setup_logo_slot.mjs](c:\_Personal\NHL94SNESVault\TileViewer\replace_setup_logo_slot.mjs)
- [TileViewer/tmp/build-seattle-safe-frame.mjs](c:\_Personal\NHL94SNESVault\TileViewer\tmp\build-seattle-safe-frame.mjs)
- [TileViewer/tmp/seattle_setup_frame.bin](c:\_Personal\NHL94SNESVault\TileViewer\tmp\seattle_setup_frame.bin)
- [TileViewer/tmp/seattle_setup_frame_safe.bin](c:\_Personal\NHL94SNESVault\TileViewer\tmp\seattle_setup_frame_safe.bin)

Reference docs:

- [Docs/Dev_Notes/game_setup_logos_technical.md](c:\_Personal\NHL94SNESVault\Docs\Dev_Notes\game_setup_logos_technical.md)
- [Docs/Dev_Notes/sprite_frames_technical.md](c:\_Personal\NHL94SNESVault\Docs\Dev_Notes\sprite_frames_technical.md)

## What Was Learned From Seattle

Seattle originally had a setup-logo frame that rendered the correct art but used
an unsafe frame shape.

The working fix was to keep Seattle's art but repack it into Anaheim's stable
setup-logo frame structure.

The safe working structure is:

- `11` sprites
- `35` tiles
- `topBytes = 1088`
- `botBytes = 32`
- `dataLen = 99`

That is the format currently used for the fixed Seattle setup-logo slot.

## When You Need Assembly Changes

Usually, for future logo art changes, you should not need new assembly changes
if all of these are true:

- The team already has a valid setup-logo slot.
- The palette pointer setup already exists.
- You are only replacing the setup-logo art/frame data.

You may need assembly work only when one of these changes:

- a new team slot is being added
- the palette pointer table must point to new palette data
- the setup-logo blob is being relocated again
- the team index normalization rules change

If you are only changing art for an existing slot, prefer asset replacement over
assembly edits.

## Recommended Workflow

### 1. Prepare the logo art

Prepare the logo as raw setup-logo art.

The TileViewer setup-logo importer expects a `48x48` raw `4bpp` bin:

- `36` tiles
- `1152` bytes

The import path lives in the TileViewer code and can export a frame bin.

Relevant implementation:

- [TileViewer/src/game-setup-logos.ts](c:\_Personal\NHL94SNESVault\TileViewer\src\game-setup-logos.ts)
- [TileViewer/src/main.ts](c:\_Personal\NHL94SNESVault\TileViewer\src\main.ts)

### 2. Build a normal frame first

If needed, use the TileViewer import/export path to create a frame bin similar to:

- [TileViewer/tmp/seattle_setup_frame.bin](c:\_Personal\NHL94SNESVault\TileViewer\tmp\seattle_setup_frame.bin)

That gives you a frame containing the intended art, but not necessarily the safe
runtime layout.

### 3. Repack into the safe frame layout

Use the safe-frame builder to repack the rendered pixels into Anaheim's stable
frame shape.

Current script:

- [TileViewer/tmp/build-seattle-safe-frame.mjs](c:\_Personal\NHL94SNESVault\TileViewer\tmp\build-seattle-safe-frame.mjs)

Run:

```powershell
Set-Location "c:\_Personal\NHL94SNESVault"
node .\TileViewer\tmp\build-seattle-safe-frame.mjs
```

Output:

- [TileViewer/tmp/seattle_setup_frame_safe.bin](c:\_Personal\NHL94SNESVault\TileViewer\tmp\seattle_setup_frame_safe.bin)

If you make this workflow generic later, the builder script should be parameterized
by source frame, destination slot, and safe reference slot.

### 4. Inject the safe frame into the blob

Use the setup-logo replacement tool:

```powershell
Set-Location "c:\_Personal\NHL94SNESVault"
node .\TileViewer\replace_setup_logo_slot.mjs \
  --blob .\Src\32TeamPatch\setup_logo_seattle_fb30.bin \
  --frame .\TileViewer\tmp\seattle_setup_frame_safe.bin \
  --out .\Src\32TeamPatch\setup_logo_seattle_fb30.bin \
  --slot 28
```

What this does:

- decompresses the FB30 setup-logo blob
- replaces the selected frame
- recompresses it
- verifies round-trip correctness

### 5. Compile the ROM

Per repo convention for this patch flow, use:

```powershell
Set-Location "c:\_Personal\NHL94SNESVault\Src\32TeamPatch"
.\patch.bat
```

Output ROM:

- [tmpbuild/32TeamNHL94.sfc](c:\_Personal\NHL94SNESVault\tmpbuild\32TeamNHL94.sfc)

## Validation Checklist

After replacing a setup logo, verify all of these:

1. The expected logo art displays.
2. Switching teams with `Y` does not corrupt adjacent setup text or sprites.
3. The same issue does not appear only on one team-specific roster/setup path.
4. The blob still decompresses and recompresses cleanly.

## Fast Triage Rules

If the wrong logo appears but there is no corruption:

- the slot pointer or palette target is probably wrong

If the correct logo appears but sprites corrupt during team switching:

- the frame layout is probably wrong, even if the art itself looks fine

If forcing the logo to use Anaheim's slot removes corruption:

- the current slot's frame metadata is probably unsafe
- rebuild the art into the Anaheim-safe frame format instead of continuing to
  patch runtime code

## Current Seattle State

The current Seattle fix is asset-based, not runtime-based.

That means future Seattle setup-logo revisions should start by changing:

- the source setup-logo art/frame
- the safe-frame rebuild output
- the injected frame in `setup_logo_seattle_fb30.bin`

and should only touch assembly if the slot plumbing itself changes.