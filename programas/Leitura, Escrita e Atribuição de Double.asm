.data
	msg: .asciiz "Forne�a um n�mero decimal: "
	zero: .double 0.0
	
.text
	#imprimindo mensagem para o usu�rio
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o n�mero
	li $v0, 6
	syscall #valor lido estar� em $f0
	
	ldc1 $f2, zero
	add.s $f12, $f2, $f0
	
	#imprimindo o n�mero
	li $v0, 2
	syscall