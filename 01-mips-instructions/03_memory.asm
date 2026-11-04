# 03_memory.asm - CST 237 FA26, MIPS lecture 1 demo
# Two words in memory. Load both, add in a register. Watch the Data Segment.

        .data
A:      .word 30, 12, 0          # A[0] at A, A[1] at A + 4, A[2] at A + 8

        .text
main:
        la   $t0, A            # lui  $at, 0x1001 ; ori $t0, $at, 0x0000
        lw   $t1, 0($t0)       # $t1 = A[0] = 30
        lw   $t2, 4($t0)       # $t2 = A[1] = 12
        add  $t3, $t1, $t2     # $t3 = 42
        sw   $t3, 8($t0)       # A[2] = 42

        # boilerplate: exit
        li   $v0, 10           # addiu $v0, $zero, 10
        syscall
