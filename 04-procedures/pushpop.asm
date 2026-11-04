# Push three words, pop one, CST 237 FA26 Week 11 (P&H 2.8)
.text
main:
    addi $t0, $zero, 10
    addi $sp, $sp, -4
    sw   $t0, 0($sp)      # push 10
    addi $t0, $zero, 20
    addi $sp, $sp, -4
    sw   $t0, 0($sp)      # push 20
    addi $t0, $zero, 40
    addi $sp, $sp, -4
    sw   $t0, 0($sp)      # push 40
    lw   $t1, 0($sp)      # pop into $t1
    addi $sp, $sp, 4
    li   $v0, 10          # addiu $v0,$zero,10
    syscall
