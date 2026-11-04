# MIPS Procedures, Parts 1 and 2

`jal`, `jr $ra`, the register contract, and the stack.  Step these with F7 and watch `$ra`, `$sp` and the PC.

| Program | Slides | Run it, then check |
|---|---|---|
| `leaf.asm` | Part 1, slides 12-15 | `$s0` = `0xfffffffc` (-4).  Step it: `$ra` changes on the `jal`, and the `jr $ra` goes back to the line after it. |
| `bump.asm` | Part 1, slide 16, Check yourself | Two calls, each adds 5: `$t0` = `0x0000001f` (31) |
| `pushpop.asm` | Part 2, slide 6, Check yourself | `$t1` = `0x00000028` (40), `$sp` = `0x7fffeff4`.  Set the Data Segment window to `0x7fffeff0` to watch the three pushes. |
| `leaf_s0.asm` | Part 2, slide 7 | The caller's `$s0` survives the call: `$s0` = `0x00000063` (99).  The result was in `$v0` at the `jr`; `main` copies it to `$s1` = `0xfffffffc` before the exit call reuses `$v0`. |
