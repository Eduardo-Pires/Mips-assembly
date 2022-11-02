.data
	string: .asciiz "Cadeia de caracteres"
	caractere: .byte 'A' #caractere a ser impresso
	
	idade: .word 56	 #valor inteiro na memória RAM
.text
	li $v0, 4 #imprimir string/cadeia de caracteres
	la $a0, string
	syscall

	li $v0, 4  #imprimir char
	la $a0, caractere
	syscall
	
	li $v0, 1 #imprimir inteiro
	lw $a0, idade
	syscall
	
	li $v0, 10 #encerrar o programa
	syscall