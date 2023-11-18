.text

# Primeiro termo (p1)
addi $t0, $0, 0

# Razão (r)
addi $t1, $0, 2  # Exemplo: Use 2 como razão, você pode alterar isso

# Número de termos na sequência (n)
addi $t2, $0, 10  # Exemplo: Use 10 termos, você pode alterar isso

# Inicialize o contador (COUNT)
addi $t3, $0, 0



# Início do loop
loop:
    # Adicione a razão ao termo atual (px) = p1 + (COUNT * r)
    add $t0, $t0, $t1  # $s0 = $s0 + $t1
  # $s0 = $s0 + $t0
    addi $t3, $t3, 1

    # Verifica se atingimos o número desejado de termos (n)
    bge $t3, $t2, print_result

    # Caso contrário, continue o loop
    j loop

# Impressão do resultado
print_result:
    # Configurar syscall para imprimir um valor inteiro
    li $v0, 1
    # Carregar o valor da soma (px) em $a0
    move $a0, $t0
    # Realizar a syscall para imprimir
    syscall

# Terminar o programa
exit:
    # Sair do programa
    li $v0, 10
    syscall
