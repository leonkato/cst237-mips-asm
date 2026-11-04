# Pseudo-instructions and what MARS turns them into, CST 237 FA26
.data
A: .word 0x04030201, 0x08070605,
         0x0C0B0A09, 0x100F0E0D
.text
main:
    li   $t0, 5          # addiu $t0, $zero, 5
    li   $t1, -1         # addiu $t1, $zero, -1
    li   $t2, 70000      # lui $at, 0x0001 ; ori $t2, $at, 0x1170
    move $t3, $t0        # addu $t3, $zero, $t0
    la   $t4, A          # lui $at, 0x1001 ; ori $t4, $at, 0x0000
    lw   $t5, 8($t4)
    add  $t6, $t0, $t5
    sw   $t6, 8($t4)
    li   $v0, 10         # addiu $v0, $zero, 10
    syscall
