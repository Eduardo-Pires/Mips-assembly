.data #area para dados na mem�ria principal
	msg: .asciiz "Ol�, mundo!" #mensagem a ser exibida para o usu�rio
	
	
.text #area para instru��es do programa
	
	li $v0, 4 #instru��o para impress�o de String
	la $a0, msg #indicar o endere�o onde est� a mensagem
	syscall #fa�a! imprima