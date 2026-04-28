# RESUMO - Compilador e interpretador
## Trade-offs no projeto de linguagens
- Confiabilidade X Custo de execução
- Legibilidade X Capacidade de escrita
- Facilidade de escrita X Confiabilidade

## Métodos de implementação
1. Compilação
2. Interpretação pura
3. Sistemas de implementação híbridos

### Compilação
O processo de tradução é lento, mas a execução é mais rápida (depois do processo estar completo).

Exemplos:
- C
- COBOL
- Ada

O processo de compilação se dá por:
1. **Análise léxica**: converte caracteres no código fonte em unidades lexicais (onde encontram-se os erros de símbolos)
    - Reúne caracteres do código-fonte em unidades léxicas (*tokens*)
    - Ignora comentários
2. **Análise sintática**: obtém as unidades léxicas do analisador e constrói árvores de análise sintática (*parse trees*) que representam a estrutura sintática do programa
    - *Parse trees* representam a hierarquia da estrutura de sintaxe
3. **Análise semântica** e gerador de **código intermediário**
    - Realiza a verificação de erros não verificados durante a análise sintática (ex.: erros de tipo)
    - Consulta a **Tabela de Símbolos**
    - Armazena informações de identificadores (constantes, funções, variáveis, tipos de dados)
    - Linguagem intermediária é similar às linguagens de montagem
4. **Geração do código**: o código de máquina é gerado
    - Converte o código intermediário em linguagem de máquina equivalente

#### Gargalo de Von Neumann
Causado pela diferença de velocidade entre memória (MHz) e processador (GHz).

#### Pré-processadores
Programa que acessa outro programa imediatamente antes de ser compilado.

Exemplos:
- Removem comentários
- `#include <stdio.h>` (linhas começadas em # em C são comandos para o pré-processador)


### Interpretação pura
Fornece uma máquina virtual para a linguagem (o interpretador age como uma simulação em software). É de 10 a 100 vezes mais lenta que em sistemas compilados.

Exemplo:
- Lisp
- Scheme
- Bash

### Sistemas de implementação híbridos
Traduzem programas em linguagem de alto nível para uma **linguagem intermediária** projetada para permitir **fácil interpretação**.

Exemplos:
- JavaScript
- Java
- C#
