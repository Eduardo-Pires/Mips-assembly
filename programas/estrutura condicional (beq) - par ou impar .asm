.data
	msg: .asciiz "forne�a um n�mero: "
	par: .asciiz "o n�mero � par"
	impar: .asciiz "o n�mero � impar"
.text
	#imprime "msg" na tela
	li $v0, 4
	la $a0, msg
	syscall
	
	#l� um n�mero inteiro
	li $v0, 5
	syscall
	
	#atribui 2 a t0
	li $t0, 2
	
	#divide $v0 por 2
	div $v0, $t0
	
	#pega o resto da ultima divis�o feita
	mfhi $t1
	
	#se for "igual a zero" vai para a label ehPar
	beq $t1, $zero, ehPar
	
	#imprimindo a mensagem impar para o usu�rio
	li $v0, 4
	la $a0, impar
	syscall
	
	#encerrar o programa
	li $v0, 10
	syscall
	
	ehPar:
		#imprimindo a mensagem par para o usu�rio
		li $v0, 4
		la $a0, par
		syscall
	
	
