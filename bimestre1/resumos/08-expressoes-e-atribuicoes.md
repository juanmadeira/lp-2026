# RESUMO - Expressões e atribuições
São fundamentais para a especificação computacional nas linguagens de programação. Para compreender a avaliação de uma expressão, é necessário conhecer a ordem dos operadores e a avaliação dos operandos. A essência das linguagens imperativas reside na regra dominante da estrutura de atribuição.

## Expressões aritméticas e regras
- Expressões aritméticas consistem em operadores, operandos, parênteses e chamadas de funções.
- As regras de precedência definem a ordem de avaliação de operadores adjacentes de níveis diferentes.
- O nível de precedência típico coloca parênteses no topo, seguidos por operadores unários, exponenciação, multiplicação/divisão e, por fim, adição/subtração.
- As regras de associação definem a ordem para operadores de mesmo nível, sendo geralmente da esquerda para a direita, com exceção da exponenciação.
- Ruby implementa operadores como métodos, permitindo que todos sejam substituídos por programas.

## Ordem de avaliação e efeitos colaterais
- A ordem de avaliação de operandos envolve buscar valores de variáveis e constantes na memória e avaliar expressões entre parênteses.
- Efeito colateral funcional ocorre quando uma função altera um parâmetro ou uma variável não local.
- Esse efeito torna-se um problema quando a função referenciada em uma expressão altera outro operando da mesma expressão.
- Algumas linguagens resolvem isso proibindo efeitos colaterais ou exigindo uma ordem fixa de avaliação, como o Java, que avalia da esquerda para a direita.

## Sobrecarga e conversão de tipos
- Sobrecarga de operador é o uso de um mesmo operador para mais de um propósito, como o sinal de mais para inteiros e reais.
- Linguagens como C++ e C# permitem que o usuário defina suas próprias sobrecargas, o que pode comprometer a legibilidade.
- Conversão de estreitamento ocorre quando um objeto vai para um tipo que não inclui todos os valores originais, enquanto a de alargamento faz o oposto.
- Coerção é uma conversão de tipo implícita que pode diminuir a capacidade do compilador de detectar erros.
- Casting é o nome dado às conversões explícitas em linguagens baseadas em C.

## Expressões relacionais e booleanas
- Expressões relacionais utilizam operadores para comparar diversos tipos e resultam em uma representação booleana.
- JavaScript e PHP possuem operadores de igualdade estrita (=== e !==) que testam valores e tipos sem realizar coerção.
- Como o C89 não possui tipo booleano, utiliza o valor zero para falso e qualquer outro valor para verdadeiro.
- A avaliação em curto-circuito determina o resultado sem avaliar todos os operandos, como quando o primeiro termo de um produto é zero.
- C, C++ e Java utilizam curto-circuito para operações lógicas usuais (&& e ||), mas não para operações bit a bit.

## Declarações de atribuição
- A sintaxe genérica envolve uma variável alvo, um operador e uma expressão.
- Perl e Ruby suportam atribuição em lista, permitindo inicializar múltiplas variáveis simultaneamente.
- Em C, C++ e Java, a própria atribuição produz um resultado e pode ser usada como um operando em outras expressões.
- O modo misto na atribuição varia entre as linguagens: Java e C# permitem apenas se houver coerção de alargamento, enquanto Ada proíbe totalmente.
