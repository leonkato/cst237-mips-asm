# addu / addiu / subu do the same arithmetic with the check off, CST 237 FA26 Week 12 (P&H 3.2)
# The same add as overflow_trap.asm.  No exception; the result wraps to 0x80000000,
# the most negative integer.  The u means "no overflow check", not "unsigned operands".
.text
main:
    li    $t0, 0x7FFFFFFF # lui $at, 0x7FFF ; ori $t0, $at, 0xFFFF   largest positive
    addiu $t1, $t0, 1     # 0x80000000, silently
    li    $v0, 10         # addiu $v0, $zero, 10   exit
    syscall
