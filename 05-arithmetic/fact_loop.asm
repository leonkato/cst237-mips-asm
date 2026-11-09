# The factorial loop with mul: 13! does not fit, and mul does not say so, CST 237 FA26 Week 12 (P&H 3.3)
# 12! = 479,001,600 = 0x1C8CFC00 fits in 32 bits.  13! = 6,227,020,800 = 0x1 7328CC00 does not;
# mul leaves 0x7328CC00 = 1,932,053,504 in $s0 with no warning.  The same multiply through mult
# shows what was dropped: hi = 1.  Change n to 12 and the loop is right.
.text
main:
    li   $a0, 13          # addiu $a0, $zero, 13   n
    li   $s0, 1           # result = 1
    li   $s1, 1           # i = 1
Loop:
    slt  $t0, $a0, $s1    # n < i ?
    bne  $t0, $zero, EndLoop
    mul  $s0, $s0, $s1    # result = result x i, low 32 bits only
    addi $s1, $s1, 1      # i++
    j    Loop
EndLoop:
    # the last multiply again, through mult, so hi shows the bit mul threw away
    li   $t1, 479001600   # lui $at, 0x1C8C ; ori $t1, $at, 0xFC00   12!
    li   $t2, 13
    mult $t1, $t2         # hi:lo = 12! x 13 = 13!
    mfhi $s2              # 1: the product did not fit
    mflo $s3              # 0x7328CC00: what mul kept
    li   $v0, 10          # exit
    syscall
