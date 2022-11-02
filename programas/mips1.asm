#prog_min.asm
#
#DESC: programa mínimo para exemplicicação da linguagem assembly do mips
#
# DDA 10/10/2022

.data #alocação estática de memória

#int x = 10;	
x: .word 10
string1: .asciiz "Hello,Worls!"

.text	
	addi	$v0, $zero, 4
	la 	$a0, str1
	syscall 
	
	#return 0
	addi	$v0, $zero, 10
	syscall 