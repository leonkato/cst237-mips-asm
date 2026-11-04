# Compiled while loop, CST 237 FA26 Week 10 (P&H 2.7)
.data
save: .word 7, 7, 7, 5, 7, 7
.text
main:
    la   $s6, save              # lui $at, 0x1001 ; ori $s6, $at, 0x0000
    addi $s3, $zero, 0          # i = 0
    addi $s5, $zero, 7          # k = 7
Loop: sll  $t1, $s3, 2
    add  $t1, $t1, $s6
    lw   $t0, 0($t1)
    bne  $t0, $s5, Exit
    addi $s3, $s3, 1
    j    Loop
Exit: li   $v0, 10   # addiu $v0, $zero, 10
    syscall
