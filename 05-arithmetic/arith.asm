# Read two integers; multiply (both halves) and divide (quotient and remainder), CST 237 FA26 Week 12 (P&H 3.3-3.4)
# Try a = 479001600 (12!) and b = 13: hi = 1 says the product does not fit in 32 bits.
# Step with F7 and watch hi and lo at the bottom of the Registers window: they change only at mult and div.
.data
    askA:     .asciiz "a: "
    askB:     .asciiz "b: "
    labHi:    .asciiz "hi (upper 32 bits of a*b): "
    labLo:    .asciiz "lo (lower 32 bits of a*b): "
    labQ:     .asciiz "a / b: "
    labR:     .asciiz "a mod b: "
    newline:  .asciiz "\n"
.text
main:
    li   $v0, 4              # addiu $v0, $zero, 4      print string
    la   $a0, askA           # lui $at, 0x1001 ; ori $a0, $at, 0
    syscall
    li   $v0, 5              # read integer
    syscall
    move $s0, $v0            # addu $s0, $zero, $v0     a
    li   $v0, 4
    la   $a0, askB
    syscall
    li   $v0, 5
    syscall
    move $s1, $v0            # b

    mult $s0, $s1            # hi:lo = a * b, 64 bits
    mfhi $s2                 # upper half
    mflo $s3                 # lower half
    div  $s0, $s1            # lo = a / b, hi = a mod b
    mflo $s4                 # quotient
    mfhi $s5                 # remainder

    la   $a0, labHi
    move $a1, $s2
    jal  print_line
    la   $a0, labLo
    move $a1, $s3
    jal  print_line
    la   $a0, labQ
    move $a1, $s4
    jal  print_line
    la   $a0, labR
    move $a1, $s5
    jal  print_line
    li   $v0, 10             # exit
    syscall

# print_line: label in $a0, integer in $a1, then a newline.  Leaf; uses $a0, $v0 only.
print_line:
    li   $v0, 4
    syscall                  # the label
    move $a0, $a1
    li   $v0, 1
    syscall                  # the integer
    la   $a0, newline
    li   $v0, 4
    syscall
    jr   $ra
