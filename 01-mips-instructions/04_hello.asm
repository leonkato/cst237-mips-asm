# 04_hello.asm - CST 237 FA26, MIPS lecture 1 demo
# Print a string, then exit. $v0 / $a0 / syscall are boilerplate for now.

        .data
msg:    .asciiz "Hello, CST 237!\n"

        .text
main:
        li   $v0, 4            # addiu $v0, $zero, 4
        la   $a0, msg          # lui  $at, 0x1001 ; ori $a0, $at, 0x0000
        syscall

        # boilerplate: exit
        li   $v0, 10           # addiu $v0, $zero, 10
        syscall
