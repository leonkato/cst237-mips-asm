# fact_loop.asm - a factorial loop with mul, CST 237 FA26 Week 12 (P&H 3.3)
#
# The C this program compiles by hand:
#
#     int n      = 13;
#     int result = 1;
#     int i      = 1;
#     while (i <= n) {
#         result = result * i;
#         i = i + 1;
#     }
#     print(result);
#
# Where the variables live:    n = $s0     result = $s1     i = $s2
# $t0 is scratch: it holds the answer to one comparison and nothing else.
#
# What to see: with n = 12 it prints 479001600, which is 12!.
# With n = 13 it prints 1932053504, which is NOT 13! (6,227,020,800).
# 13! needs 33 bits; mul keeps the low 32 and says nothing.

.text
main:
    # ---- set up the three variables ----
    li   $s0, 13             # n = 13            addiu $s0, $zero, 13
    li   $s1, 1              # result = 1
    li   $s2, 1              # i = 1

    # ---- while (i <= n) ----
    # MIPS has no "branch if less than or equal".  So ask the opposite
    # question: is n < i ?  When that is true, i has gone past n and the
    # loop is over.  When it is false, i <= n still holds: do the body.
Loop:
    slt  $t0, $s0, $s2       # $t0 = 1 if n < i, else 0
    bne  $t0, $zero, EndLoop # $t0 is 1: i is past n, leave the loop
                             # $t0 is 0: fall through into the body

    # ---- the body ----
    mul  $s1, $s1, $s2       # result = result * i   (low 32 bits only)
    addi $s2, $s2, 1         # i = i + 1
    j    Loop                # back to the test

    # ---- after the loop: print result ----
EndLoop:
    move $a0, $s1            # the number to print    addu $a0, $zero, $s1
    li   $v0, 1              # syscall 1 = print integer
    syscall

    # ---- what mul threw away ----
    # Do the last multiply again, 12! x 13, with mult, and read hi.
    # hi = 0 would mean the product fit in 32 bits.  It is 1: it did not.
    li   $t1, 479001600      # 12!    lui $at, 0x1C8C ; ori $t1, $at, 0xFC00
    li   $t2, 13
    mult $t1, $t2            # hi:lo = 12! x 13, all 64 bits
    mfhi $s3                 # $s3 = 1: the bit mul dropped
    mflo $s4                 # $s4 = 0x7328CC00: the part mul kept

    li   $v0, 10             # exit
    syscall
