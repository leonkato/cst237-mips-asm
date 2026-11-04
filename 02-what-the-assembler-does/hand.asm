# Instructions to encode by hand, CST 237 FA26 (What the Assembler Does)
# Assemble only (F3) and compare your encoding with the Code column.
# Do not run it: $s0 is 0, so the lw at 8($s0) is not a valid data address
# and MARS stops with a runtime exception.
.text
main:
    add  $t0, $s0, $s1
    sub  $t0, $s0, $s1
    lw   $t0, 8($s0)
    sw   $t0, 8($s0)
    addi $t1, $zero, -1
    addi $t1, $zero, 5
