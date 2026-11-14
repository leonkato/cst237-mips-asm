# float.asm - CST 237, MIPS Arithmetic Part 2: load two floats, add, subtract, print
.data
    a:       .float 35.25
    b:       .float -7.25
    labSum:  .asciiz "a + b = "
    labDif:  .asciiz "a - b = "
    newline: .asciiz "\n"
.text
main:
    la    $t0, a          # lui $at,0x1001 ; ori $t0,$at,0
    lwc1  $f2, 0($t0)     # $f2 = the 32 bits at a
    lwc1  $f4, 4($t0)     # $f4 = the 32 bits at b

    li    $v0, 4          # addiu $v0,$zero,4
    la    $a0, labSum
    syscall
    add.s $f12, $f2, $f4  # $f12 = a + b
    li    $v0, 2          # print the float in $f12
    syscall
    li    $v0, 4
    la    $a0, newline
    syscall

    li    $v0, 4
    la    $a0, labDif
    syscall
    sub.s $f12, $f2, $f4  # a - b
    li    $v0, 2
    syscall
    li    $v0, 4
    la    $a0, newline
    syscall

    li    $v0, 10         # exit
    syscall
