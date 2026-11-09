# mult writes a 64-bit product into hi and lo; mfhi and mflo copy it out, CST 237 FA26 Week 12 (P&H 3.3)
# 100000 x 100000 = 10,000,000,000 = 0x2 540BE400, 34 bits: hi = 2, lo = 0x540BE400.
# mul keeps only the low 32 bits.  Open the Registers window: hi and lo are its last two rows.
.text
main:
    li   $t0, 100000      # lui $at, 0x0001 ; ori $t0, $at, 0x86A0   (100000 does not fit in 16 bits)
    li   $t1, 100000
    mult $t0, $t1         # hi:lo = $t0 x $t1
    mfhi $t2              # upper 32 bits -> $t2 = 2
    mflo $t3              # lower 32 bits -> $t3 = 0x540BE400
    mul  $t4, $t0, $t1    # low 32 bits only, straight into $t4 (a real instruction)
    li   $v0, 10          # addiu $v0, $zero, 10   exit
    syscall
