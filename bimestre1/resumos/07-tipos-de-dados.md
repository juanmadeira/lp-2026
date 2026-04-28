# RESUMO - Tipos de dados
Define uma coleção de objetos e as operações permitidas sobre eles. O descritor é o conjunto de atributos de uma variável, enquanto objetos de dados representam instâncias de tipos definidos pelo usuário.

## Tipos primitivos
- Inteiros são mapeamentos diretos das capacidades do hardware.
- Ponto flutuante aproxima números reais; o padrão mais comum é o IEEE 754.
- Tipos complexos (Python, Fortran, C99) são formados por dois pontos flutuantes para partes real e imaginária.
- Decimais são essenciais para bancos e comércio pela precisão, embora ocupem mais memória.
- Booleanos são os mais simples e servem para aumentar a legibilidade do código.
- Caracteres são armazenados como códigos numéricos; o Unicode (16 ou 32 bits) permite representar diversas línguas naturais.

## Cadeias de caracteres
- Strings são sequências de caracteres e podem ser tratadas como tipos primitivos ou arrays especiais.
- O comprimento pode ser estático (Java String), dinâmico limitado (C/C++ com terminador nulo) ou totalmente dinâmico.
- Operações comuns incluem concatenação, comparação, atribuição e casamento de padrões.
- Implementações dinâmicas exigem alocação e desalocação no monte, o que aumenta o custo computacional.

## Tipos ordinais definidos pelo usuário
- São tipos cujos valores podem ser associados a inteiros positivos.
- Enumeração: define constantes nomeadas, melhorando a legibilidade e permitindo que o compilador detecte operações ilegais.
- Subfaixa: define uma sequência contínua de um tipo ordinal, aumentando a confiabilidade ao impedir valores fora do limite.

## Arrays e matrizes
- Um array é um mapeamento de índices para elementos de dados.
- As categorias de vinculação de índices e alocação incluem estática (eficiente), dinâmica da pilha (flexível) e dinâmica do monte (tamanho variável).
- Arrays heterogêneos permitem elementos de tipos distintos no mesmo conjunto (Python, Ruby).
- Arrays retangulares têm colunas de mesmo tamanho, enquanto irregulares possuem variações no total de elementos por linha.
- Slices são subestruturas de arrays usadas para referenciar partes específicas da matriz.

## Arrays associativos e uniões
- Arrays associativos (dicionários) usam chaves em vez de índices numéricos para acessar elementos.
- Uniões permitem que diferentes tipos de valores ocupem o mesmo espaço de memória em tempos distintos.
- Uniões livres (C/C++) são inseguras; uniões discriminadas (Ada) garantem segurança através de um indicador de tipo.

## Ponteiros e referências
- Ponteiros armazenam endereços de memória e são necessários para estruturas de dados dinâmicas.
- Problemas comuns incluem objetos perdidos (vazamento de memória) e ponteiros soltos.
- O uso de coletores de lixo ajuda na gestão da memória, mas gera custo de processamento.

## Checagem de tipo e segurança
- A checagem de tipo verifica a compatibilidade entre operadores e operandos.
- Coerção é a conversão implícita de tipos realizada pelo compilador.
- Uma linguagem tem tipagem forte se todos os erros de tipo são detectados; Ada é um exemplo, enquanto C e C++ permitem burlar essa verificação.
