# CST 237 Fall 2026: MIPS programs from class

These are the MIPS programs from the CST 237 slides, ready to open in MARS.  Each folder goes with one slide deck.  The folder's README says which slide each program comes from and what you should see after it runs.

| Folder | Deck (notes PDF on Canvas) |
|---|---|
| [`01-mips-instructions`](01-mips-instructions/) | MIPS Instructions, Part 1 |
| [`02-what-the-assembler-does`](02-what-the-assembler-does/) | What the Assembler Does |
| [`03-logic-and-branches`](03-logic-and-branches/) | MIPS: Logical Operations and Decisions |
| [`04-procedures`](04-procedures/) | MIPS Procedures, Parts 1 and 2 |
| [`05-arithmetic`](05-arithmetic/) | MIPS Arithmetic, Part 1: Integers |

## Running a program

Use MARS 4.5, the same version as in class (the download link is on Canvas).

1. **File > Open** the `.asm` file.
2. **Run > Assemble** (F3).  The Text Segment window shows each instruction's address, its machine code (Code), the real instruction (Basic) and your line (Source).
3. **Run > Go** (F5) to run it all, or **Run > Step** (F7) one instruction at a time.  Watch the Registers window, and the Data Segment window for programs that use memory.

To download everything at once, use the green **Code** button above, then **Download ZIP**.

## Pseudo-instructions

`li`, `la`, `move`, the `blt`/`bge`/`bgt`/`ble` branches and the three-register `div` and `rem` are not real MIPS instructions.  MARS replaces each one with one or two real instructions.  Every pseudo-instruction in these files has a comment showing what MARS turns it into, so you can check it against the Basic column.

## Credits

Several programs are worked examples from Patterson and Hennessy, *Computer Organization and Design, MIPS Edition*, the course textbook, set up to run in MARS.  Licensed under the MIT License; see [LICENSE](LICENSE).
