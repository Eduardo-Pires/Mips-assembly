.data
	pergunta: .asciiz "Qual � o seu nome? "
	saudacao: .asciiz "Ol�, "
	nome: .space 25
						
.text
	#impress�o da pergunta
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura do nome
	li $v0, 8
	la $a0, nome
	la $a1, 25
	syscall
	
	
	#mostra a sauda��o
	li $v0, 4
	la $a0, saudacao
	syscall
	
	
	#imprime o nome
	li $v0, 4
	la $a0, nome
	syscall
	