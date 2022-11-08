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

.macro push
	sw $ra, 0($sp)
	sw $a0, -4($sp)
	sw $a1, -8($sp)
	sw $a2, -12($sp)
	sw $a3, -16($sp)
	sw $s0, -20($sp)
	sw $s1, -24($sp)
	sw $s2, -28($sp)
	sw $s3, -32($sp)
	sw $s4, -36($sp)
	sw $s5, -40($sp)
	sw $s6, -44($sp)
	sw $s7, -48($sp)
	
	addi $sp, $sp, -52
.end_macro

.macro pop
	addi $sp, $sp, 52
	
	lw $ra, 0($sp)
	lw $a0, -4($sp)
	lw $a1, -8($sp)
	lw $a2, -12($sp)
	lw $a3,  -16($sp)
	lw $s0, -20($sp)
	lw $s1, -24($sp)
	lw $s2, -28($sp)
	lw $s3, -32($sp)
	lw $s4, -36($sp)
	lw $s5, -40($sp)
	lw $s6, -44($sp)
	lw $s7, -48($sp)
.end_macro

.macro endl
	li $v0, 4
	la $a0, nextLine
	syscall
.end_macro 

