.data 
	dado:.word 0x4E55F200 
	dado2:.word 0x31233332
.text
lw $t1 , dado
lw $s0 , dado2
lw $t2, 0($s0)
lui $t3, 0x0000
ori $t3, $t3, 0x00ff
and $t3, $t3, $t2
sll $t1, $t1, 8
or  $t4, $t1, $t3
sw $t4, 0($s0)

