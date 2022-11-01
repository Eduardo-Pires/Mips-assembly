.text
 	li $t0, 32
 	li $t1, 5
 	
 	div $t0, $t1 #divide dois números  
 	
 	srl $s2, $t0, 4 #move o número 4 bits para a direita
 	
 	#parte inteira em $s0
 	mflo $s0
 	
 	#resto em $s1
 	mfhi $s1
 	
 	
 	