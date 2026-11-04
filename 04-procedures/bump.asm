# Check yourself: two calls to a leaf, CST 237 FA26 Week 11 (P&H 2.8)
.text
main:
    addi $t0, $zero, 21
    jal  bump
    jal  bump
    li   $v0, 10          # addiu $v0,$zero,10
    syscall

bump:
    addi $t0, $t0, 5
    jr   $ra
