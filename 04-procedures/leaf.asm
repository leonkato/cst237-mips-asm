# Leaf procedure, CST 237 FA26 Week 11 (P&H 2.8)
# Java:  int leaf(int g, int h, int i, int j) { return (g + h) - (i + j); }
.text
main:
    addi $a0, $zero, 5    # g
    addi $a1, $zero, 6    # h
    addi $a2, $zero, 7    # i
    addi $a3, $zero, 8    # j
    jal  leaf             # $ra = address of the next line
    move $s0, $v0         # addu $s0,$zero,$v0 : keep the result
    li   $v0, 10          # addiu $v0,$zero,10 : exit
    syscall

leaf:
    add  $t0, $a0, $a1    # $t0 = g + h
    add  $t1, $a2, $a3    # $t1 = i + j
    sub  $v0, $t0, $t1    # result = (g + h) - (i + j)
    jr   $ra              # back to the caller
