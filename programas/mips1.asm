#prog_min.asm
#
#DESC: programa m�nimo para exemplicica��o da linguagem assembly do mips
#
# DDA 10/10/2022

.data #aloca��o est�tica de mem�ria

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