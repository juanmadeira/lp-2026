# RESUMO - Ponteiros e alocação de memória
## Ponteiros
Variáveis que **armazenam o endereço de memória** de outra variável. 

- Sintaxe e inicialização: são declarados usando o caractere `*` (ex: `int *p`) e inicializados com o operador `&`, que retorna o endereço de uma variável existente.
- Operações: é possível realizar operações de **igualdade** (copiar endereços ou conteúdos), **incremento/decremento** (para percorrer vetores) e **comparação** de endereços.

Exemplo:
```c
#include <stdio.h>

int main() {
    int numero = 10;         // Variável comum
    int *p = NULL;           // Declaração de ponteiro inicializado como nulo

    p = &numero;             // Ponteiro recebe o endereço da variável numero

    printf("Valor de numero: %d\n", numero);
    printf("Endereço de numero: %x\n", &numero);
    printf("Conteúdo do ponteiro p: %x\n", p);
    printf("Valor apontado por p: %d\n", *p);

    *p = 50;                 // Alterando o valor da variável numero através do ponteiro

    printf("Novo valor de numero: %d\n", numero);

    return 0;
}
```

## Alocação dinâmica em C
- `malloc`: aloca um bloco de bytes e retorna um ponteiro para o início.
- `calloc`: aloca memória para vários elementos, inicializando todos os bits com zero.
- `realloc`: modifica o tamanho de um bloco de memória já alocado anteriormente.
- `free`: libera a memória ocupada, devolvendo-a ao sistema.

> Boa prática:
recomenda-se usar `sizeof()` para determinar o tamanho correto dos tipos e inicializar ponteiros como `NULL` para evitar erros.

## Estruturas (`struct`)
As estruturas agrupam diferentes variáveis em um único tipo criado pelo programador.

- Acesso: membros de uma estrutura são acessados pelo operador `.` (ponto) em instâncias diretas, ou pelo operador `->` (seta) quando se utiliza um **ponteiro para a estrutura**.
- Cuidado com Cópias: ao copiar uma estrutura que contém ponteiros (como strings), ocorre apenas a cópia do endereço (cópia rasa). Para evitar que alterações em uma afetem a outra, deve-se realizar um **clone (cópia profunda)**, alocando nova memória para os membros internos.
