# The Processor, Part 1: The Datapath

One short program that uses the four instructions traced on the drawing: `lw`, `add`, `sw` and `beq`.  Step it one instruction at a time with the Registers window open, and for each step say which boxes on the drawing did the work.  The first line, `lui`, only makes the address `0x10010000`; it is not one of the four paths.

| Program | Slides | Run it, then check |
|---|---|---|
| `datapath.asm` | slide 14, Walk it in MARS | After `lui`: `$t0` = `0x10010000`.  After the two `lw`: `$t1` = 5, `$t2` = 7.  After `add`: `$t3` = `0x0000000c` (12).  After `sw`: the Data Segment word at `0x10010008` is `0x0000000c`.  After `addi`: `$t4` = 12.  `beq` is taken, so the `addi` that would clear `$t3` is skipped and `$t3` still holds 12 at the end.  In the Text Segment, the Code column for `add $t3, $t1, $t2` is `0x012a5820`, the word cut into fields on slide 6. |
