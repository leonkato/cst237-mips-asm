# MIPS Arithmetic, Part 2: Floating Point

IEEE 754 single precision, the `$f` registers, and `lwc1` / `add.s` / `sub.s` / print float.  Open the **Coproc 1** tab before you step: the `$f` registers are there, not in the Registers tab, and they change only at `lwc1`, `add.s` and `sub.s`.

| Program | Slides | Run it, then check |
|---|---|---|
| `float.asm` | slides 18-19, The program / Walk it in MARS | Console: `a + b = 28.0`, then `a - b = 42.5`.  After the two `lwc1`: `$f2` = `0x420d0000` (35.25), `$f4` = `0xc0e80000` (-7.25).  After `add.s`: `$f12` = `0x41e00000` (28.0).  After `sub.s`: `$f12` = `0x422a0000` (42.5).  `.float` stored the two words in the Data Segment at `0x10010000` and `0x10010004`; the program never converts anything. |
