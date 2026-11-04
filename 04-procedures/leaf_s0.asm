# Leaf procedure that uses $s0, so it must save it, CST 237 FA26 Week 11 (P&H 2.8)
.text
main:
    addi $s0, $zero, 99   # caller's value in $s0 must survive the call
    addi $a0, $zero, 5    # g
    addi $a1, $zero, 6    # h
    addi $a2, $zero, 7    # i
    addi $a3, $zero, 8    # j
    jal  leaf
    move $s1, $v0         # addu $s1,$zero,$v0
    li   $v0, 10          # addiu $v0,$zero,10
    syscall

leaf:
    addi $sp, $sp, -4     # push: make room for one word
    sw   $s0, 0($sp)      #       save the caller's $s0
    add  $t0, $a0, $a1    # $t0 = g + h
    add  $t1, $a2, $a3    # $t1 = i + j
    sub  $s0, $t0, $t1    # f = (g + h) - (i + j), in $s0
    add  $v0, $s0, $zero  # result to $v0
    lw   $s0, 0($sp)      # pop:  restore the caller's $s0
    addi $sp, $sp, 4      #       give the word back
    jr   $ra
