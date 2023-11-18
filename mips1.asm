.text 
	addi $t0 , $zero,16
	addi $t1 , $zero,2
	addi $t2 , $zero,0
	addi $t3 , $zero, 0
	
	while: 
		beq $t1,$t2, exit
		srl $t0, $t0,1
		addi $t2, $t2,1
		j while
	exit: 
	move $t3, $t0