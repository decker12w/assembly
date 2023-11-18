.data 
	first: .asciiz "Digite um número " 
.text
	li $v0,4
	la $a0,first
	syscall
	
	li $v0,5
	syscall
	
	move $t0, $v0
	
	li $v0,4
	la $a0,first
	syscall
	
	li $v0,5
	syscall
	
	move $t1, $v0
	
	add $s0, $t0, $t1
	
	li $v0, 1
        move $a0, $s0  # Carrega o valor da soma em $a0 para impressão
        syscall

        li $v0, 10
        syscall  # Termina o programa