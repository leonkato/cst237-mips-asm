# Compiled if-else, CST 237 FA26 Week 10 (P&H 2.7)
.text
main:
    addi $s1, $zero, 5   # g
    addi $s2, $zero, 3   # h
    addi $s3, $zero, 1   # i
    addi $s4, $zero, 2   # j
    bne  $s3, $s4, Else
    add  $s0, $s1, $s2
    j    Exit
Else: sub  $s0, $s1, $s2
Exit: li $v0, 10  # addiu $v0,$zero,10
    syscall
