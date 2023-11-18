.data
array: .word 10, 20, 30, 40, 50  # Array de valores inteiros na seção de dados

.text
main:
    # Carrega o valor do array[2] (terceiro elemento) na memória em $t0
    la $t1, array       # Carrega o endereço base do array em $t1
    lw $t0, 8($t1)      # Carrega o valor do array[2] em $t0 (8 bytes de deslocamento)

    # Modifica o valor de $t0 (por exemplo, atribui 55 a ele)
    li $t0, 55

    # Armazena o valor modificado de $t0 no array[2] (terceiro elemento)
    sw $t0, 8($t1)

    # Exemplo: imprimir o valor do array[2] após a modificação
    lw $t0, 8($t1)      # Recarrega o valor do array[2] em $t0
    li $v0, 1            # Código do sistema para imprimir um inteiro
    move $a0, $t0        # Coloca o valor de $t0 no argumento $a0
    syscall              # Chama a função do sistema para imprimir

    # Saída do programa
    li $v0, 10           # Código do sistema para encerrar o programa
    syscall
