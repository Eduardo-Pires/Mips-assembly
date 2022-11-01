.data
	msg: .asciiz "Forneça um número decimal: "
	zero: .double 0.0
	
.text
	#imprimindo mensagem para o usuário
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o número
	li $v0, 6
	syscall #valor lido estará em $f0
	
	ldc1 $f2, zero
	add.s $f12, $f2, $f0
	
	#imprimindo o número
	li $v0, 2
	syscall