# slt, slti, sltu and the slt + branch pairs, CST 237 FA26 Week 10 (P&H 2.7)
.text
main:
    addi $s1, $zero, 5
    addi $s2, $zero, 9
    slt  $t0, $s1, $s2
    slt  $t1, $s2, $s1
    slti $t2, $s1, 10
    addi $s3, $zero, -1
    addi $s4, $zero, 1
    slt  $t3, $s3, $s4
    sltu $t4, $s3, $s4
    slt  $t5, $s1, $s2
    bne  $t5, $zero, Less
    addi $t6, $zero, 0
    j    Done
Less: addi $t6, $zero, 1
Done: li   $v0, 10              # addiu $v0, $zero, 10
    syscall
