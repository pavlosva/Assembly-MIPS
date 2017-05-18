#data_section
.data
	#messages|
	msg_1: .asciiz "a(1,1) = "
	msg_2: .asciiz "a(1,2) = "
	msg_3: .asciiz "a(2,1) = "
	msg_4: .asciiz "a(2,2) = "
	msg_5: .asciiz "b(1,1) = "
	msg_6: .asciiz "b(1,2) = "
	msg_7: .asciiz "b(2,1) = "
	msg_8: .asciiz "b(2,2) = "
	#Arrays|
	arrA: .space 32
	arrB: .space 32
	arrC: .space 32 
	#Misc
	newLine: .asciiz "\n"
	makeTab: .asciiz "		 "

#text_section˜
.text
	main:
		addi $s0, $zero, 0
	#msg1 || Array A
		li $v0, 4
		la $a0, msg_1
		syscall
		li $v0, 7
		syscall
		sdc1 $f0, arrA($s0)
		addi $s0, $s0, 8
	#msg2
		li $v0, 4
		la $a0, msg_2
		syscall
		liv $v0, 7
		syscall
		sdc1 $f0, arrA($s0)
		addi $s0, $s0, 8
	#msg3
		li $v0, 4
		la $a0, msg_3
		syscall
		li $v0, 7
		syscall
		sdc1 $f0, arrA($s0)
		addi $s0, $s0, 8
	#msg4
		li $v0, 4
		la $a0, msg_4
		syscall
		li $v0, 7
		syscall
		sdc1 $f0, arrA($s0)
		addi $s0, $zero, 0
	#msg5 || Array B
		li $v0, 4
		la $a0, msg_5
		syscall
		li $v0, 7
		syscall 
		sdc1 $f0, arrB($s0)
		addi $s0, $s0, 8
	#msg6 || Array B
		li $v0, 4
		la $a0, msg_6
		syscall
		li $v0, 7
		syscall
		sdc1 $f0, arrB($s0)
		addi $s0, $s0, 8
	#msg7 || Array B
		li $v0, 4
		la $a0, msg_7
		syscall
		li $v0, 7
		syscall
		sdc1 $f0, arrB($s0)
		addi $s0, $s0, 8
	#msg8 || Array B
		li $v0, 4
		la $a0, msg_8
		syscall
		li $v0, 7
		syscall
		sdc1 $f0, arrB($s0)
		li $v0, 4
		la $a0, newLine
		syscall
		li $v0, 4
		la $a0, newLine
		syscall
		jal mm
	
	Exit:
		li $v0 10
		syscall
	
	mm:
		addi $sp, $sp, -32
		sw $ra, 28($sp)
		sw $fp, 24($sp)
		sw $s0, 20($sp)
		sw $s1, 16($sp)
		sw $s2, 12($sp)
		addi $fp, $sp, 32
		la $a3, arrA
		la $a2, arrB
		la $a1, arrC
		li $t7, 0
		li $t8, 1 #flag_for_condition_BOOLEAN_TRUE
		li $s0, 0

	loop1:
		li $s1, 0
	
	loop2:
		li $s2, 0
		sll $t2, $s2, 2
		addi $t2, $t2, $s1
		sll $t2, $t2, 3
		addi $t2, $t2, $a2
		ldc1 $f20, ($t2)

	loop3:
		li $t0, $s0, 1


	








































































