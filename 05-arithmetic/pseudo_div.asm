# The three-register div and rem are pseudo-instructions; mul is real, CST 237 FA26 Week 12 (P&H 3.4)
# Assemble and read the Basic column: div and rem each become four words.  MARS puts a
# divide-by-zero check (bne, break) in front of the real div, then copies lo or hi out.
.text
main:
    li   $t0, 100         # addiu $t0, $zero, 100
    li   $t1, 7
    div  $t2, $t0, $t1    # bne $t1, $zero, +1 ; break ; div $t0, $t1 ; mflo $t2   quotient 14
    rem  $t3, $t0, $t1    # bne $t1, $zero, +1 ; break ; div $t0, $t1 ; mfhi $t3   remainder 2
    mul  $t4, $t0, $t1    # one real instruction: 700
    li   $v0, 10          # exit
    syscall
