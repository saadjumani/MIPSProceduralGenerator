.data

vert: .byte 'v'
face: .byte 'f'
spce: .asciiz " "
newline: .asciiz "\n"

chairFaceList1: .asciiz "\nf 3 4 8 7 \nf 2 3 7 6 \nf 1 4 8 5 \nf 1 2 3 4 \nf 5 6 7 8 \nf 1 2 6 5\nf 11 12 16 15 \nf 10 11 15 14 \nf 9 12 16 13 \nf 9 10 11 12 \nf 13 14 15 16 \nf 9 10 14 13 \nf 19 20 24 23 \nf 18 19 23 22 \nf 17 20 24 21 \nf 17 18 19 20 \nf 21 22 23 24 \nf 17 18 22 21\nf 27 28 32 31 \nf 26 27 31 30 \nf 25 28 32 29 \nf 25 26 27 28 \nf 29 30 31 32 \nf 25 26 30 29\nf 35 36 40 39 \nf 34 35 39 38 \nf 33 36 40 37 \nf 33 34 35 36 \nf 37 38 39 40 \nf 33 34 38 35\nf 43 44 48 47 \nf 42 43 47 46 \nf 41 44 48 45 \nf 41 42 43 44 \nf 45 46 47 48 \nf 41 42 46 43" 

chairFaceList2: .asciiz "\nf 7 8 4 3 \nf 6 7 3 2 \nf 5 8 4 1 \nf 4 3 2 1 \nf 8 7 6 5 \nf 5 6 2 1 \nf 15 16 12 11 \nf 14 15 11 10\nf 13 16 12 9 \nf 12 11 10 9 \nf 16 15 14 13 \nf 13 14 10 9 \nf 23 24 20 19 \nf 22 23 19 18 \nf 21 24 20 17 \nf 20 19 18 17 \nf 24 23 22 21 \nf 21 22 18 17 \nf 31 32 28 27 \nf 30 31 27 26 \nf 29 32 28 25 \nf 28 27 26 25 \nf 32 31 30 29 \nf 29 30 26 25 \nf 39 40 36 35 \nf 38 39 35 34 \nf 37 40 36 33 \nf 36 35 34 33 \nf 40 39 38 37 \nf 35 38 34 33 \nf 47 48 44 43 \nf 46 47 43 42 \nf 45 48 44 41 \nf 44 43 42 41 \nf 48 47 46 45 \nf 43 46 42 41" 

bedFaceList1: .asciiz "\nf 3 4 8 7 \nf 2 3 7 6 \nf 1 4 8 5 \nf 1 2 3 4 \nf 5 6 7 8 \nf 1 2 6 5\nf 11 12 16 15 \nf 10 11 15 14 \nf 9 12 16 13 \nf 9 10 11 12 \nf 13 14 15 16 \nf 9 10 14 13 \nf 19 20 24 23 \nf 18 19 23 22 \nf 17 20 24 21 \nf 17 18 19 20 \nf 21 22 23 24 \nf 17 18 22 21\nf 27 28 32 31 \nf 26 27 31 30 \nf 25 28 32 29 \nf 25 26 27 28 \nf 29 30 31 32 \nf 25 26 30 29\nf 35 36 40 39 \nf 34 35 39 38 \nf 33 36 40 37 \nf 33 34 35 36 \nf 37 38 39 40\nf 33 34 38 35\nf 41 42 43 44 45 46\nf 47 48 49 50 51 52\nf 41 42 48 47\nf 42 43 49 48\nf 43 44 50 49\nf 44 45 51 50\nf 45 46 52 51"

bedFaceList2: .asciiz "\nf 7 8 4 3 \nf 6 7 3 2 \nf 5 8 4 1 \nf 4 3 2 1 \nf 8 7 6 5 \nf 5 6 2 1 \nf 15 16 12 11 \nf 14 15 11 10\nf 13 16 12 9 \nf 12 11 10 9 \nf 16 15 14 13 \nf 13 14 10 9 \nf 23 24 20 19 \nf 22 23 19 18 \nf 21 24 20 17 \nf 20 19 18 17 \nf 24 23 22 21 \nf 21 22 18 17 \nf 31 32 28 27 \nf 30 31 27 26 \nf 29 32 28 25 \nf 28 27 26 25 \nf 32 31 30 29 \nf 29 30 26 25 \nf 39 40 36 35 \nf 38 39 35 34 \nf 37 40 36 33 \nf 36 35 34 33 \nf 40 39 38 37 \nf 35 38 34 33\nf 46 45 44 43 42 41\nf 52 51 50 49 48 47\nf 47 48 42 41\nf 48 49 43 42\nf 49 50 44 43\nf 50 51 45 44\nf 51 52 46 45"

PromptMode: .asciiz "Press 1 to print chair, press 2 to print bed "

PromptWidth: .asciiz "Please enter width in inches "
PromptHeight: .asciiz "Please enter leg height in inches "
PromptLength: .asciiz "Please enter length in inches "

Width: .word 0
LegHeights: .word 0
Depth: .word 0
BoardHeight: .word 0


.text
.globl main
######################################################
#Main starts
######################################################
main:

# $t0, $t1 $t2 are the X, Z and Y coordinates
# $t3 is the square size

li $t0,0    #X
li $t1,0    #Z
li $t2,0    #Y
li $t3,2    #constant square depth 2
li $t4,10   #Box Height
li $t5,15   #Chair Width #BedWidth
li $t6,16   #bed length/depth


la $a0, PromptMode
li $v0, 4
syscall

li $v0, 5
syscall

move $t7, $v0

bne $t7,2, PROMPTONESKIPPED

la $a0, PromptLength
li $v0, 4
syscall

li $v0, 5
syscall

move $t6,$v0


PROMPTONESKIPPED:

bgt $t7,2, PROMPTTWOSKIPPED
blt $t7,1, PROMPTTWOSKIPPED

la $a0, PromptWidth
li $v0, 4
syscall

li $v0, 5
syscall

move $t5,$v0

la $a0, PromptHeight
li $v0, 4
syscall

li $v0, 5
syscall
move $t4,$v0

PROMPTTWOSKIPPED:

bne $t7, 2, PRINTBEDSKIPPED
jal PRINTBED

PRINTBEDSKIPPED:

bne $t7, 1, PRINTCHAIRSKIPPED

jal PRINTCHAIR

PRINTCHAIRSKIPPED:

#EXIT
li $v0, 10
syscall

#######################
#FUNCTION DEFINITIONS:#
#######################

PRINTBED:
addi $sp, -4
sw $ra, ($sp)

jal PRINTBEDLEGS
jal PRINTBEDBOARD
jal PRINTRESTBOARD

la $a0, bedFaceList1
li $v0 4
syscall

la $a0, bedFaceList2
li $v0 4
syscall

lw $ra, ($sp)
addi $sp, 4

jr $ra

PRINTBEDLEGS:

addi $sp, -4
sw $ra, ($sp)

addi $sp, -4
sw $t5, ($sp)

addi $sp, -4
sw $t3, ($sp)

jal PRINTBOX        # print box at o,o,o (o being the origin point)
add $t0,$t0, $t5
jal PRINTBOX        # print box at o+t5,o,o
add $t2,$t2, $t6
jal PRINTBOX        # print box at o+t5, o, o+t5
li $s1, -1
mul $s0, $t0, $s1
add $t0,$t0, $s0
jal PRINTBOX        #print box at o+t5-t5,0,0+t5 

lw $t3, ($sp)
addi $sp, 4

lw $t5, ($sp)
addi $sp, 4

lw $ra, ($sp)
addi $sp, 4



jr $ra

PRINTBEDBOARD:
    
    addi $sp, -4
    sw $ra, ($sp)
    
    li $t0,0
    move $t1, $t4
    li $t2,0

    addi $sp, -4
    sw $t3, ($sp)

    addi $sp, -4
    sw $t4,($sp)

    move $t3, $t6
    addi $t3, 2     #Adjust length so that leg doesn't appear outside of the board
    
    li $t4, 4

    addi $t5, 2     #Adjust width so that leg doesn't appear outside of the board

    jal PRINTRECTBOX

    lw $t4, ($sp)
    addi $sp, 4

    lw $t3, ($sp)
    addi $sp, 4
    
    lw $ra, ($sp)
    addi $sp, 4
    
jr $ra

PRINTRESTBOARD:

addi $sp, -4
sw $ra, ($sp)

li $t0,0    #X
move $t1,$t4    #Z
li $t2,2    #Y

jal PRINTVERTEX

li $s0, 2
li $s1, 4

div $t4, $s0
mflo $s0

add $t1, $t1, $s0

jal PRINTVERTEX

add $t1,$t1, $s0

div $t5, $s1
mflo $s1

add $t0, $t0, $s1

jal PRINTVERTEX

add $t0, $t0, $s1
add $t0, $t0, $s1

jal PRINTVERTEX

move $t0, $t5
sub $t1, $t1, $s0

jal PRINTVERTEX

sub $t1, $t1, $s0

jal PRINTVERTEX

li $t0,0    #X
move $t1,$t4    #Z
li $t2,0    #Y

li $t0,0    #X
move $t1,$t4    #Z
li $t2,0    #Y

jal PRINTVERTEX

li $s0, 2
li $s1, 4

div $t4, $s0
mflo $s0

add $t1, $t1, $s0

jal PRINTVERTEX

add $t1,$t1, $s0

div $t5, $s1
mflo $s1

add $t0, $t0, $s1

jal PRINTVERTEX

add $t0, $t0, $s1
add $t0, $t0, $s1

jal PRINTVERTEX

move $t0, $t5
sub $t1, $t1, $s0

jal PRINTVERTEX

sub $t1, $t1, $s0

jal PRINTVERTEX


lw $ra, ($sp)
addi $sp, 4

jr $ra



PRINTCHAIR:

#Prints chair of with and depth $t5 and height $t4*2


addi $sp, -4
sw $ra, ($sp)

jal PRINTCHAIRBASE

jal PRINTCHAIRBOARD

jal PRINTCHAIRBACK

la $a0, chairFaceList1
li $v0 4
syscall

la $a0, chairFaceList2
li $v0 4
syscall

lw $ra, ($sp)
addi $sp, 4



jr $ra

PRINTCHAIRBACK:

li $t0,0    #X
move $t1,$t4    #Z
li $t2,0    #Y

addi $sp, -4
sw $ra, ($sp)

#li $t3, 2
li $t5, 2

jal PRINTRECTBOX

lw $ra, ($sp)
addi $sp, 4

jr $ra

    
PRINTCHAIRBOARD:

li $t0,0        #X
li $t1,0        #Z
li $t2,0        #Y

addi $sp, -4
sw $ra, ($sp)

move $t1, $t4

move $t3, $t5
addi $t3, 2

addi $sp, -4
sw $t4, ($sp)

li $t4, 2
jal PRINTBOX

lw $t4,($sp)
addi $sp, 4

lw $ra, ($sp)
addi $sp, 4

jr $ra

PRINTCHAIRBASE:

addi $sp, -4
sw $ra, ($sp)

jal PRINTBOX
add $t0,$t0, $t5
jal PRINTBOX
add $t2,$t2, $t5
jal PRINTBOX
li $s1, -1
mul $s0, $t0, $s1
add $t0,$t0, $s0
jal PRINTBOX

lw $ra, ($sp)
addi $sp, 4

jr $ra

###Print a Box###

PRINTBOX:

    #Prints a box of height $t4 and base of 2x2 at coordinates $t0, $t1, $t2
    
    addi $sp, -4
    sw $ra, ($sp)

    # Save X,Z,Y (T0,T1,T2)
    addi $sp, -4
    sw $t0, ($sp)

    addi $sp, -4
    sw $t1, ($sp)

    addi $sp, -4
    sw $t2, ($sp)
    ##

    jal PRINTSQUARE

    lw $t2, ($sp)
    addi $sp, 4

    lw $t1, ($sp)
    addi $sp, 4

    lw $t0, ($sp)
    addi $sp, 4

    addi $sp, -4
    sw $t0, ($sp)

    addi $sp, -4
    sw $t1, ($sp)

    add $t1, $t1, $t4   #Print Square again at height t4
    jal PRINTSQUARE

    lw $t1, ($sp)
    addi $sp, 4

    lw $t0, ($sp)
    addi $sp, 4


    lw $ra, ($sp)
    addi $sp, 4
jr  $ra


PRINTRECTBOX:
#Print a box of width t3, depth t5 and height t4
    
    addi $sp, -4
    sw $ra, ($sp)

    # Save X,Z,Y (T0,T1,T2)
    addi $sp, -4
    sw $t0, ($sp)

    addi $sp, -4
    sw $t1, ($sp)

    addi $sp, -4
    sw $t2, ($sp)
    ##

    jal PRINTRECT

    lw $t2, ($sp)
    addi $sp, 4

    lw $t1, ($sp)
    addi $sp, 4

    lw $t0, ($sp)
    addi $sp, 4

    addi $sp, -4
    sw $t0, ($sp)

    addi $sp, -4
    sw $t1, ($sp)

    add $t1, $t1, $t4   #Print Square again at height t4
    jal PRINTRECT

    lw $t1, ($sp)
    addi $sp, 4

    lw $t0, ($sp)
    addi $sp, 4


    lw $ra, ($sp)
    addi $sp, 4
    
jr  $ra

###Print Square###

PRINTSQUARE: #Print a square of size $t3 on XY plane

    #t3 = width of square
    
    addi $sp, -4
    sw $ra, ($sp)


    #Pint original vertex (0,0,0)
    jal PRINTVERTEX 


    #ADD Y AND PRINT (0,0,SIZE)
    add $t2, $t2, $t3
    jal PRINTVERTEX

    # ADD X AND PRINT (SIZE, 0, SIZE)
    add $s0, $t3, $t0
    move $t0, $s0
    jal PRINTVERTEX


    li $s1, -1
    mul $s0, $t3, $s1
    add $t2, $t2 $s0
    jal PRINTVERTEX


    lw $ra, ($sp)
    addi $sp, 4
jr $ra

PRINTVERTEX:

    lb $a0, vert
    li $v0, 11
    syscall

    la $a0, spce
    li $v0, 4
    syscall

    move $a0, $t0
    li $v0, 1
    syscall

    la $a0, spce
    li $v0, 4
    syscall

    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, spce
    li $v0, 4
    syscall

    move $a0, $t2
    li $v0, 1
    syscall

    la $a0, newline
    li $v0, 4
    syscall

jr $ra


PRINTRECT: #Print a Rectangle of width $t3 and depth $t5 on XY plane

    #t3 = width of square
    
    addi $sp, -4
    sw $ra, ($sp)


    #Pint original vertex (0,0,0)
    jal PRINTVERTEX 


    #ADD Y AND PRINT (0,0,SIZE)
    add $t2, $t2, $t3
    jal PRINTVERTEX

    # ADD X AND PRINT (SIZE, 0, SIZE)
    add $s0, $t5, $t0
    move $t0, $s0
    jal PRINTVERTEX


    li $s1, -1
    mul $s0, $t3, $s1
    add $t2, $t2 $s0
    jal PRINTVERTEX


    lw $ra, ($sp)
    addi $sp, 4
jr $ra
