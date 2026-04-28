# RESUMO - Nomes, vinculações e escopo
## Nomes
- *Case sensitivity*: principalmente em linguagens baseadas em C (C++, Java, C#)
- Comprimento: varia de 31 caracteres (Fortran 95) a sem limites (Java, C#)
- Palavras Especiais: diferenciam-se entre **palavras-chave** (especiais apenas em certos contextos) e **palavras reservadas** (não podem ser usadas como nomes).

## Atributos das Variáveis
- Nome
    - Nem todas as variáveis tem um
- Endereço
    - Endereço de memória associado com a variável
    - Quando dois nomes acessam o mesmo endereço são chamados de apelidos (*aliases*)
- Valor
    - L-value (endereço): a localização de memória associada
    - R-value (valor): conteúdo da célula de memória
- Tipo
    - Determina o intervalo de valores e as operações permitidas
- Tempo de vida
- Escopo

## Vinculação (*binding*)
Associação entre um atributo e uma entidade. O **tempo de vinculação** pode ocorrer no projeto da linguagem, implementação, compilação, carregamento ou execução.

- Estática: ocorre antes do tempo de execução e permanece inalterada.
- Dinâmica: ocorre ou pode mudar durante a execução.
- Vinculação de Tipo: pode ser **explícita** (via declaração) ou **implícita** (pela primeira aparição da variável, como em Perl e Fortran).

Linguagens como JavaScript e PHP usam vinculação dinâmica, oferecendo flexibilidade ao custo de menor eficiência e dificuldade na detecção de erros.

## Categorias de variáveis por tempo de vida
O tempo de vida é a duração da vinculação da variável a uma célula de memória:

- Estática: alocada antes da execução; eficiente, mas sem suporte a recursão (ex: `static` em C).
- Dinâmica da Pilha: criada na declaração; permite recursão, mas possui sobrecarga de alocação (ex: variáveis locais em Java).
- Monte Dinâmico Explícita (*Explicit Heap-dynamic*): alocada por diretivas do programador (ex: `new` em C++ ou Java).
- Monte Dinâmico Implícita (*Implicit Heap-dynamic*): alocada por atribuição; altamente flexível, mas ineficiente (ex: strings em JavaScript).

## Escopo
Define a faixa de sentenças onde uma variável é visível.

- Estático: baseado no layout textual do programa (estratégia do ALGOL 60). C, Java e C# permitem declarações em qualquer lugar, mas com regras diferentes sobre o reuso de nomes em blocos.
- Dinâmico: baseado na sequência de chamadas de subprogramas. É conveniente, mas torna a legibilidade pobre e impossibilita a checagem estática de tipos.
- Ambiente de referência: coleção de todas as variáveis visíveis em uma sentença específica.

## Constantes nomeadas
Variáveis vinculadas a um valor apenas uma vez, aumentando a **modificabilidade e legibilidade**. Em C#, por exemplo, existem as constantes de tempo de compilação (`const`) e as de tempo de execução (`readonly`).
