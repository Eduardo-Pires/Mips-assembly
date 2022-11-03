.data

	msg: .asciiz "digite um número: "
	resultado: .asciiz "A soma dos pares é "
	
.text

	li $v0, 10
	move $t0, $v0
	
	li $t1, 0
	li $t2, 2
	li $t3, 0
	
	while:
		beq $t1, $t0, out
#		{

			li $v0, 4
			la $a0, msg
			syscall
			
			li $v0, 5
			syscall
			
			div $v0, $t2
			mfhi $t4
			
			beq $t4, $zero, par
			j impar

			par: 
				add $t3, $t3, $v0	
							
			impar:
			addi $t1, $t1, 1
#		}
		j while
	out:
	
	li $v0, 4
	la $a0, resultado
	syscall
	
	li $v0, 1
	move $a0, $t3
	syscall