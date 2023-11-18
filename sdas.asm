.data
dado: .word 0x4E55F200
dado2: .word 0x31233332
.text
la $t0, dado
la $s0, dado

# 00
lb $t1, 0($t0)

# f2
lbu $t2, 1($t0)
sll $t2, $t2, 8

# 55
lb $t3, 2($t0)
sll $t3, $t3, 16

# 4E
lb $t4, 3($t0)
sll $t4, $t4, 24

# Combinar os valores em $s0
or $s0, $t4, $t3
or $s0, $s0, $t1
or $s0, $s0, $t2


