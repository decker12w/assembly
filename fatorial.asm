.data
    msg: .asciiz "Digite um número "
.text
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall

    move $t0, $v0
    li $t1, 1 # Inicializa $t1 com 1

    # result
    jal fatorial

    li $v0, 1
    move $a0, $t1
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

fatorial:
    beqz $t0, Exit # Verifica se $t0 é igual a zero (condição de saída)
    mul $t1, $t1, $t0
    addi $t0, $t0, -1
    j fatorial

Exit:
    jr $ra
