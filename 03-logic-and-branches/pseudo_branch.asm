# What MARS emits for blt / bge / bgt / ble, CST 237 FA26 Week 10
.text
main:
    addi $t0, $zero, 3
    addi $t1, $zero, 8
    blt  $t0, $t1, L1   # slt $at,$t0,$t1 ; bne $at,$zero,L1
    addi $t2, $zero, 1
L1: bge  $t0, $t1, L2   # slt $at,$t0,$t1 ; beq $at,$zero,L2
    addi $t2, $zero, 2
L2: bgt  $t0, $t1, L3   # slt $at,$t1,$t0 ; bne $at,$zero,L3
    addi $t2, $zero, 3
L3: ble  $t0, $t1, L4   # slt $at,$t1,$t0 ; beq $at,$zero,L4
    addi $t2, $zero, 4
L4: li   $v0, 10   # addiu $v0, $zero, 10
    syscall
