.data
	zero: .float 0.0
	zero2: .double 0.0
	nextLine: .byte '\n'
.text

.macro printInt(%arg)
	addi $v0, $zero, 1
	add $a0, $zero, %arg
	syscall
.end_macro

.macro printFloat(%arg)
	lwc1 $f31, zero
	
	addi $v0, $zero, 2
	add.s $f12, $f31 , %arg
	syscall 
.end_macro

.macro printDouble(%arg)
	ldc1 $f30, zero2
	
	addi $v0, $zero, 3
	add.d $f12, $f30 , %arg
	syscall 
.end_macro

.macro printString(%arg)
	addi $v0, $zero , 4
	la $a0, %arg
	syscall
.end_macro

.macro scanInt
	li $v0, 5
	syscall
.end_macro 

.macro scanFloat
	li $v0, 6
	syscall
.end_macro

.macro scanDouble
	li $v0, 7
	syscall
.end_macro

.macro scanString(%arg, %arg2)
	li $v0, 8
	la $a0, %arg
	la $a1, %arg2
	syscall
	
.end_macro 

.macro sbrk(%arg)
	addi $v0, $zero, 9
	lw $a0, %arg
	syscall	
	
.end_macro

.macro return0
	li $v0, 10
	syscall
.end_macro

.macro endl
	addi $v0, $zero , 4
	la $a0, nextLine
	syscall
.end_macro



