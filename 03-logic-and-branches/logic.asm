# Logical operations, CST 237 FA26 Week 10 (P&H 2.6)
.text
main:
    addi $t1, $zero, 0x0DC0
    addi $t2, $zero, 0x3C00
    and  $t0, $t1, $t2
    or   $t3, $t1, $t2
    nor  $t4, $t2, $zero
    andi $t5, $t1, 0x00FF
    ori  $t6, $t1, 0xF000
    addi $s0, $zero, 9
    sll  $t7, $s0, 4
    srl  $t8, $t7, 2
    addi $s1, $zero, -16
    srl  $t9, $s1, 4
    li   $v0, 10   # addiu $v0, $zero, 10
    syscall
