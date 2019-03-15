.data
var1:	.word 1
var2:	.word 2
var3:	.word -3
dm:	.half -1
codea:	.byte 'a'
Mess:	.Asciiz " ABCDEF !\n"
codMA:	.byte 'A'
var4:	.word 31

.text
.globl main

main:	lw $t1,var1
	lw $t1,var3
	lw $t2,var3
	lw $t3,var3
	or $t1,$t1,$t1
	or $t2,$t2,$t2
	or $t3,$t2,$t1
	
	j fin
	b etiq
	b etiq
	
	add $t1,$t2,$t3
	j fin
	
etiq:	addi $t1,$t2,5

fin:	li $v0,10
	syscall