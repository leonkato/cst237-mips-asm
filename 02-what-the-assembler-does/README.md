# What the Assembler Does

Source lines versus the real instructions MARS emits, and encoding instructions by hand.

| Program | Slides | Run it, then check |
|---|---|---|
| `shim.asm` | slides 8-10 | Compare Source with Basic: `li $t2, 70000` becomes two instructions, `la` always becomes two.  After running: `$t1` = `0xffffffff`, `$t2` = `0x00011170`, `$t4` = `0x10010000`, `$t6` = `0x0c0b0a0e` |
| `hand.asm` | slide 15 | **Assemble only, do not run.**  Encode each line by hand, then check your hex against the Code column. |

`monday.asm` (slide 3, Monday's Program) is in [`01-mips-instructions`](../01-mips-instructions/).
