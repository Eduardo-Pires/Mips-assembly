.include "utils.asm"

.data
	str1: .asciiz "digite o número: "
	
.text
main:
	#int fat (int n)
	#if(n == 1) || (n == 0) return 1
	#return n* fat(n-1)
	
	imprimeStr(str1)
	readInt
	
	#armazenar o inteiro lido num registrador seguro
	add $s0, $zero, $v0
	
	#(1) setar os argumentos
	add $a0, $zero, $s0
	
	#(2) chamar a função
	
	jal FAT
	
	#recupera o valor do retorno
	add $s1, $zero
	
	return0
	
#codigo do fatorial

FAT:	
	push
	beq	$a0, $zero, EHZERO
	addi	$t0, $zero, 1
	beq 	$a0, $t0, EHUM

	j	CONTINUE
EHZERO:	
EHUM:	
	#(4) restaura o contexto
	pop
	
	#(5) define o valor do retorno
	addi $v0, $zero, 1
	
	#(6) retorna da função
	jr $ra
	
CONTINUE:
	#return n* fat(n-1)
	
	addi $t0, $a0, -1 # temp = n - 1
	add $s3, $zero, $a0 #salva o n atual no s3
	add $a0, $zero, $t0 #seta o argumento para n-1
	
	jal FAT
	
	#(7)recupera o valor de retorno de 
	mult $s3, $v0
	
	