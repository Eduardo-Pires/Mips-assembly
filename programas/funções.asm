.data
	msg: .asciiz "forne�a um n�mero positivo"
	ehpar: .asciiz "O n�mero � par"
	ehimpar: .asciiz "O n�mero � impar"
	
.text

	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	
	add $s0, $zero, $v0
	jal parOuImpar
	
	li $v0, 10
	syscall
	
parOuImpar:
	addi $t0, $zero, 2
	div $s0, $t0
	
	mfhi $t1
	beq $t1, $zero, par
	
	li $v0, 4
	la $a0, ehimpar
	syscall
	
	add $v0, $zero, $a0
	jr $ra
	
	par:
	
	li $v0, 4
	la $a0, ehpar
	syscall
	
	add $v0, $zero, $a0
	jr $ra
	
