.data
X:	.word 2
Y:	.word 3
Z:	.space 4
message:	.Asciiz "La somme est :\t"

.text 
.globl main

main:	
	#On charge les valeurs des variables dans les registres de travail
	lw $t1,X
	lw $t2,Y
	
	#On effectue l'addition, puis on stocke le résultat dans le registre de travail
	add $t3,$t1,$t2
	sw $t3,Z
	
	#Equivalent d'un printf(%s)
	li $v0,4 #La valeur 4 corresponds à un affichage d'une chaine de caractères
	la $a0,message
	syscall
	
	#Equivalent d'un printf(%d)
	li $v0,1 #La valeur 1 corresponds à un affichage d'un int
	move $a0,$t3 #Alternative : sw $a0,Z
	syscall
	
	#On sort du proramme en chargeant 10 dans v0
	li $v0,10
	syscall