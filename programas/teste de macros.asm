.include "utils.asm"
.data

	string: .space 25
	
	var: .word 25

.text
	
	scanInt
	move $t0, $v0
	printInt($t0)
	endl

	scanFloat
	printFloat($f0)
	endl
	

	scanDouble
	printDouble($f0)
	endl
	

	scanString(string, 25)
	printString(string)
	
	sbrk(var)
	
	return0