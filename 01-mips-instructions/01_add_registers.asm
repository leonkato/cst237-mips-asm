# 01_add_registers.asm - CST 237 FA26, MIPS lecture 1 demo
# Put two constants in registers and add them.  Watch $t0, $t1, $t2.

        .text
main:
        li   $t0, 5            # addiu $t0, $zero, 5
        li   $t1, 7            # addiu $t1, $zero, 7
        add  $t2, $t0, $t1     # $t2 = 5 + 7 = 12

        # boilerplate: exit
        li   $v0, 10           # addiu $v0, $zero, 10
        syscall
