# add / addi / sub check for signed overflow and trap, CST 237 FA26 Week 12 (P&H 3.2)
# The largest positive integer plus 1.  MARS stops on the addi:
#   "Runtime exception at 0x00400008: arithmetic overflow"
# (the li is two words, lui and ori, so the addi is the third word, at 0x00400008).
.text
main:
    li   $t0, 0x7FFFFFFF  # lui $at, 0x7FFF ; ori $t0, $at, 0xFFFF   largest positive
    addi $t2, $t0, 1      # overflow: MARS stops here
    li   $v0, 10          # addiu $v0, $zero, 10   exit (never reached)
    syscall
