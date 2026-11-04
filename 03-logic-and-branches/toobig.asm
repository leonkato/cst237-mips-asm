# A constant that does not fit in 16 bits, CST 237 FA26 Week 10 (P&H 2.5)
# 32768 is one past the largest 16-bit signed immediate.  MARS accepts the line
# anyway and emits three instructions: lui, ori, add.  Look at the Basic column.
.text
main:
    addi $t0, $zero, 32768
