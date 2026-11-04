# The 16-bit immediate is sign-extended, CST 237 FA26 Week 10 (P&H 2.5)
.text
main:
    addi $t0, $zero, -1
    addi $t1, $zero, 32767
    addi $t2, $zero, -32768
    lw   $t3, -4($s0)
    li   $v0, 10                # addiu $v0, $zero, 10
    syscall
