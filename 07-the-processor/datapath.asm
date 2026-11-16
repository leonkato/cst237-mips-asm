# datapath.asm - CST 237, The Processor, Part 1
# sum = x + y, kept in memory; then a compare and a branch.
# Every line but the last two is a real instruction, one 32-bit word each:
# load, add, store, add immediate, branch. Step it with the Registers window open.

        .data
x:      .word 5
y:      .word 7
sum:    .word 0

        .text
main:   lui  $t0, 0x1001         # $t0 = 0x10010000, the address of x
        lw   $t1, 0($t0)         # $t1 = x
        lw   $t2, 4($t0)         # $t2 = y
        add  $t3, $t1, $t2       # $t3 = x + y
        sw   $t3, 8($t0)         # sum = $t3
        addi $t4, $zero, 12      # $t4 = 12
        beq  $t3, $t4, done      # equal, so the branch is taken
        addi $t3, $zero, 0       # skipped
done:   li   $v0, 10             # addiu $v0, $zero, 10 : exit
        syscall
