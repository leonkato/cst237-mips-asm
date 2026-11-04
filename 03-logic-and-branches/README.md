# MIPS: Logical Operations and Decisions

Masks and shifts, sign extension, comparisons, and compiled if-else and while.

| Program | Slides | Run it, then check |
|---|---|---|
| `signext.asm` | slide 6 | `$t0` = `0xffffffff`, `$t1` = `0x00007fff`, `$t2` = `0xffff8000`: bit 15 of the immediate is copied into bits 31-16.  The `lw` is there for its encoding; look at the `FFFC` offset in its Code. |
| `toobig.asm` | slide 6 | One source line, three Basic rows (`lui`, `ori`, `add`).  `$t0` = `0x00008000` |
| `logic.asm` | slides 12-15 | `and` `$t0` = `0x00000c00`, `or` `$t3` = `0x00003dc0`, `nor` `$t4` = `0xffffc3ff`, `andi` `$t5` = `0x000000c0`, `ori` `$t6` = `0x0000fdc0`, `sll` `$t7` = `0x00000090`, `srl` `$t8` = `0x00000024`, and `srl` of -16 `$t9` = `0x0fffffff` (zeros shift in) |
| `ifelse.asm` | slide 21, Compiling an if-else | i = 1, j = 2, so the else-part runs: `$s0` = `0x00000002` (g - h) |
| `while.asm` | slides 23-24 | The loop stops at the first element that is not 7: `$s3` (i) = `0x00000003` |
| `slt.asm` | slide 29, slt and sltu | `$t3` = 1 but `$t4` = 0: as signed, -1 < 1; as unsigned, `0xffffffff` is huge.  `$t6` = 1 from the slt + bne pair. |
| `pseudo_branch.asm` | slide 28, blt, bge, bgt, ble: What MARS Emits | Assemble and read Basic: each of `blt`, `bge`, `bgt`, `ble` is an `slt` into `$at` plus a `beq` or `bne`.  After running: `$t2` = `0x00000003` |
