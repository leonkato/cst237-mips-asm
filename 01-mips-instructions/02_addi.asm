# 02_addi.asm - CST 237 FA26, MIPS lecture 1 demo
# A constant inside the instruction. There is no subi: add a negative.

        .text
main:
        li   $t0, 20           # addiu $t0, $zero, 20
        addi $t1, $t0, 4       # $t1 = 20 + 4 = 24
        addi $t2, $t0, -1      # $t2 = 20 - 1 = 19

        # boilerplate: exit
        li   $v0, 10           # addiu $v0, $zero, 10
        syscall
