.data
	saudacao: .asciiz "Ol�. Por favor, forne�a sua idade: "
	saida: .asciiz "Sua idade � "
	
.text
	li $v0, 4 #imprimir uma string
	la $a0, saudacao
	syscall
	
	li $v0, 5 #leitura de inteiros
	syscall
	
	move $t0, $v0 #valor fornecido est� em t0
	
	li $v0, 4 #imprimir uma string
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall