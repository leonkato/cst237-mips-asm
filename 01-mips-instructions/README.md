# MIPS Instructions, Part 1

Registers, constants, memory, and the first program that prints.  Programs 01 to 04 are the live demos from the first MIPS lecture.

| Program | Slides | Run it, then check |
|---|---|---|
| `01_add_registers.asm` | live demo | `$t2` = `0x0000000c` (12) |
| `02_addi.asm` | live demo, slide 17 | `$t1` = `0x00000018` (24), `$t2` = `0x00000013` (19).  There is no `subi`; add a negative. |
| `03_memory.asm` | live demo, slides 15, 22-23 | `$t3` = `0x0000002a` (42), and the word at `0x10010008` in the Data Segment is now 42 |
| `04_hello.asm` | live demo | `Hello, CST 237!` in the Run I/O window |
| `05_byte_order.asm` | slide 12, Big Endian: 0xAABBCCDD | `$t4` = `0xddccbbaa`.  The bytes were written AA BB CC DD, but MARS stores the lowest-addressed byte in the low end of the word (little endian). |
| `monday.asm` | slides 20-23 | `$t1` = `0x0c0b0a0e`: A[2] was `0x0c0b0a09`, plus 5, stored back at `0x10010008` |
