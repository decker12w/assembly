.data
msg: .asciiz "Digite um número: "

.text
	li $v0, 4
	la $a0, msg
	syscall

	li $v0, 5
	syscall

	move $s1, $v0

	#contador
	move $s0, $zero

	li $v0, 1     # Código de syscall para imprimir um inteiro
	while:
		move $a0, $s0  # Coloca o valor de $s0 em $a0
		syscall

		addi $s0, $s0, 1
		beq $s0, $s1, Exit
		j while

Exit:

			