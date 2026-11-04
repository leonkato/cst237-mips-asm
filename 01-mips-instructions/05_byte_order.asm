# 05_byte_order.asm - CST 237 FA26, MIPS lecture 1 demo
# Four bytes in memory, loaded as one word.  Compare $t4 with the order the
# bytes were written in, and look at the Data Segment.  MARS warns that 0xAA
# and friends are out of range for a signed byte; the warning is harmless.

        .data
myBytes: .byte 0xAA, 0xBB, 0xCC, 0xDD
foobar:  .asciiz "AABBCCDD"

        .text
main:
        lw   $t4, myBytes      # lui $at, 0x1001 ; lw $t4, 0($at)

        li   $t0, 5            # addiu $t0, $zero, 5
        li   $t1, 7            # addiu $t1, $zero, 7
        add  $t2, $t0, $t1     # $t2 = 5 + 7 = 12

        # boilerplate: exit
        li   $v0, 10           # addiu $v0, $zero, 10
        syscall
