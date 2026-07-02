# Piano samples — attribution & license

The `.ogg` files in this directory are a curated subset of the **Salamander
Grand Piano V3**, a multi-velocity recording of a Yamaha C5 grand.

- **Author:** Alexander Holm
- **License:** Creative Commons Attribution 3.0 (CC-BY 3.0)
  <https://creativecommons.org/licenses/by/3.0/>
- **Source:** <https://archive.org/details/SalamanderGrandPianoV3>
  (original OggVorbis distribution)

## What's included here

To keep the repository lean while preserving real dynamic (velocity) response,
we ship **3 of the original 16 velocity layers** for each sampled pitch:

- `v4`  — soft   (mellow, felt-like)
- `v8`  — medium (warm; the default for palta playback)
- `v13` — loud   (open, powerful)

Pitches are sampled every minor third across the full keyboard
(A0, C, D#, F#, A … up to C8 — 30 pitches), so any played note is at most
~1.5 semitones from a real recorded sample. Filenames follow the original
convention: `<note><octave>v<layer>.ogg`, e.g. `C4v8.ogg`, `D#3v4.ogg`.

The full set (all 16 velocity layers, release and pedal samples) is available
from the source link above.
