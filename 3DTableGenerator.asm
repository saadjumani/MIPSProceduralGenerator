.data
msg1: .asciiz "Enter a string: \n"
msg2: .space 15
.text
.globl main
main:

jal INOUT


li $t2,0
LOOP2:
lb $t1, ($sp)

move $a0, $t1
li $v0, 11
syscall

addi $t2,1

blt $t1,10, LOOP2

li $v0, 10
syscall

INOUT:

la $a0, msg1
li $v0, 4
syscall

la $t0, msg2
addi $sp, -8
sw $t0, ($sp)
li $t2, 0

LOOP1:
li $v0, 12
syscall
sb $v0, ($t0)
addi $t0, 1
addi $t2,1
blt $t2,10,LOOP1

la $t0, ($sp)

jr $ra