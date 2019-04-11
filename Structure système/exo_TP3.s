# Prendre la valeur absolue de tous les �l�ments d'un tableau
# Pour remplir, on lit ou on a d�j� les valeurs mises dans le tableau ? -> tableau pr�-rempli
# Pour balayer, quel mode d'adressage ? -> indirect: pointeur
# Comment savoir o� se termine le tableau ? -> �tiquette � la fin du tableau

.data
tab:	.word	20,14,8,-18,0,-2,-7,4,-5 #tableau pr�-rempli
fin_tab:	.word	0
chaine_espace:	.asciiz " "
message:	.asciiz	"Le nombre est : "
chaine_retour_ligne:	.asciiz "\n"

.globl main
.text

main:
	# On charge l'adresse du premier �l�ment du tableau 
	la $t1, tab
	
	# On charge l'adresse de l'�l�ment marquant la fin du tableau
	la $t2, fin_tab
	
reviens:
	# Tant que pointeur < adresse fin tableau
	beq $t1, $t2, fini
	
	# On prends l'�l�ment du pointeur pour l'examiner
	lw $t3, ($t1) # Les parent�ses signifie que c'est l'adresse qui est prise et non le valeur
	
	# On v�rifie que l'�l�ment examin� est positif
	bgez $t3, pas_touche
	
	# Si c'est n�gatif, on le rends positif et on le stocke 
	neg $t3, $t3
	sw $t3, ($t1)
	
pas_touche:
	addi $t1, $t1, 4
	b reviens
	
fini:
	la $t1, tab

bouc_aff:
	
	li $v0, 4
	la $a0, message
	syscall

	
	lw $a0, ($t1)
	li $v0, 1
	syscall
		
	li $v0, 4
	la $a0, chaine_retour_ligne
	syscall
	
	addi $t1, $t1, 4
	beq $t1, $t2, ufin
	b bouc_aff
	
ufin:
	li $v0, 10
	syscall