.data
	msg: .asciiz "digite um n�mero: "
	maior: .asciiz "o n�mero � maior que zero"
	menor: .asciiz "O n�mero � menor que zero"
	igual: .asciiz "O n�mero � igual a zero"
	
.text
	#imprime a mensagem do usu�rio
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o n�mero inteiro
	li $v0, 5
	syscall
	
	#transfere o valor de $v0 para $t0
	move $t0, $v0
	
	#caso for igual a 0, vai para imprimeIgual
	beq $t0, $zero, imprimeIgual
	
	#caso for maior que 0, vai para imprimeMaior
	bgt $t0, $zero, imprimeMaior
	
	#caso for maior que 0, vai para imprimeMenor
	blt $t0, $zero, imprimeMenor
	
	
	imprimeIgual:
		#imprime que o n�mero � igual a zero
		li $v0, 4
		la $a0, igual
		syscall
		
		#sai do programa
		li, $v0, 10
		syscall
		
	imprimeMaior:
		#imprime que o n�mero � maior que zero
		li $v0, 4
		la $a0, maior
		syscall
		
		#sai do programa
		li, $v0, 10
		syscall
	
	imprimeMenor:
		#imprime que o n�mero � menor que zero
		li $v0, 4
		la $a0, menor
		syscall
		
		
	
		