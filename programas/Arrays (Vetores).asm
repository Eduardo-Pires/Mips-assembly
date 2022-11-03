.data
	meuArray:
		.alig 2
		.space 16
.text
	move $t0, $zero #indice do array
	move $t1, $zero #valor a ser colocado no array
	li $t2, 16 #tamanho do array
	
	loop:
		beq $t0, $t2, out
		
			sw $t1, meuArray($t0)
			addi $t0, $t0, 4
			addi $t1, $t1, 1
		
		j loop
	out:
	
	move $t0, $zero #volta o valor do índice para 0
	imprime:
		beq $t0, $t2, out1
			
			li $v0, 1
			lw $a0, meuArray($t0)
			syscall
			
			addi $t0, $t0, 4
			
		j imprime
	out1:
		
		