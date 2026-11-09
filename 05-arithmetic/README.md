# MIPS Arithmetic, Part 1: Integers

Overflow, the multiplier, `hi` and `lo`, and `mult` / `mfhi` / `mflo` / `mul` / `div`.  Open the Registers window before you step: `hi` and `lo` are its last two rows, and they change only at `mult` and `div`.

| Program | Slides | Run it, then check |
|---|---|---|
| `overflow_trap.asm` | slide 4, Overflow: trap or wrap | MARS stops: `Runtime exception at 0x00400008: arithmetic overflow` on the `addi`.  `$t2` is never written. |
| `overflow_wrap.asm` | slide 4 | The same add with `addiu`: no exception, `$t1` = `0x80000000`, the most negative integer. |
| `mult.asm` | slide 9, mult, mfhi, mflo | `$t2` (hi) = `0x00000002`, `$t3` (lo) = `0x540be400`; `mul` gives `$t4` = `0x540be400`, the low half only.  10,000,000,000 needs 34 bits. |
| `fact_loop.asm` | slide 10, mul: the shortcut | 13! through `mul`: `$s0` = `0x7328cc00` (1,932,053,504), wrong and silent.  The same multiply through `mult`: `$s2` (hi) = `0x00000001`, `$s3` (lo) = `0x7328cc00`. |
| `div.asm` | slide 11, Division | 100 / 7: `$t2` = 14, `$t3` = 2.  -100 / 7: `$t5` = `0xfffffff2` (-14), `$t6` = `0xfffffffe` (-2).  100 / -7: `$t8` = -14, `$t9` = 2.  The remainder takes the dividend's sign. |
| `pseudo_div.asm` | slide 12, The pseudo forms | Assemble and read Basic: `div $t2, $t0, $t1` and `rem $t3, $t0, $t1` are four words each (`bne`, `break`, `div`, `mflo` or `mfhi`); `mul` is one.  After running: `$t2` = 14, `$t3` = 2, `$t4` = `0x000002bc` (700). |
| `arith.asm` | slides 13-15, The program / Walk it in MARS | Enter `479001600` and `13` in the Run I/O window.  Console: hi 1, lo 1932053504, a / b 36846276, a mod b 12.  `$s2` = `0x00000001`, `$s3` = `0x7328cc00`, `$s4` = `0x02323ac4`, `$s5` = `0x0000000c`. |
