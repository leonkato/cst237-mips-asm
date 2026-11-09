# div: quotient in lo, remainder in hi, and the sign rule, CST 237 FA26 Week 12 (P&H 3.4)
# The quotient rounds toward zero; the remainder takes the sign of the dividend.
# Check every case: quotient x divisor + remainder = dividend.
.text
main:
    li   $t0, 100         # addiu $t0, $zero, 100
    li   $t1, 7
    div  $t0, $t1         # lo = 100 / 7, hi = 100 mod 7
    mflo $t2              # 14
    mfhi $t3              # 2
    li   $t4, -100
    div  $t4, $t1         # -100 / 7
    mflo $t5              # -14
    mfhi $t6              # -2: the remainder takes the sign of the dividend
    li   $t7, -7
    div  $t0, $t7         # 100 / -7
    mflo $t8              # -14
    mfhi $t9              # 2
    li   $v0, 10          # exit
    syscall
