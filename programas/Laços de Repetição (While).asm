.data
	espa�o: .byte ' '
	
.text
	#ler o n�mero (scanf("%d", &n))
	li $v0, 5
	syscall
	
	move $t0, $v0 #move o valor lido para $t0
	move $t1, $zero #adiciona zero para $t1 (i = 0)
	
	while:
		beq $t1, $t0, out #se $t1 for maior que $t0, vai para out (i < n) 
#		{
			#imprime $t1
			li $v0, 1
			move $a0, $t1
			syscall
			
			
			#imprime espa�o em branco
			li $v0, 4
			la $a0, espa�o
			syscall	
			
			addi $t1, $t1, 1 #soma 1 a $t1 (i++)				
#		}

		j while # volta para while
	out: