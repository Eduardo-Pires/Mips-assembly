.text
	li $t0, 12
	addi $t1, $zero, 10
	
	sll $s1, $t1, 10 #move um número 2^n casas
	
	mul $s0, $t0, $t1 #multiplica um número pelo outro
	
	li $v0, 1
	move $a0, $s0
	syscall 