.data 
	msg: .asciiz "Digite um número: "
	msg2: .asciiz "Par"
	msg3: .asciiz "Impar"
.text 
	main:
		#Imprime a msg
		li $v0, 4
		la $a0, msg
		syscall
		
		#Lê o número 
		li $v0, 5
		syscall
		
		move $t0, $v0
		
		jal ePar 
		
		li $v0, 10
		syscall
		
		ePar:
			addi $t1,$t1, 2
			
			div $t0,$t1
			mflo $t3
			beq $t3,0,eImpar
			
			li $v0,4
			la $a0, msg2 
			syscall
			
			jr $ra
			
		eImpar:
			li $v0,4
			la $a0, msg3 
			syscall
			
			jr $ra
		