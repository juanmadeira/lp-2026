package main
import (
	"bufio"
	"fmt"
	"os"
)// Dados dois strings (um contendo uma frase e outro contendo uma palavra),
// determine o número de vezes que a palavra ocorre na frase.
// Exemplo:
// Para a palavra ANA e a frase :
// ANA E MARIANA GOSTAM DE BANANA
// Resp: Temos que a palavra ANA ocorre 4 vezes na frase.

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Insira uma frase: ")
	frase, _ := reader.ReadString('\n')

	fmt.Print("Insira uma palavra: ")
	palavra, _ := reader.ReadString('\n')

	// remover \n
	frase = frase[:len(frase)-1]
	palavra = palavra[:len(palavra)-1]

	count := 0
	lenFrase := len(frase)
	lenPalavra := len(palavra)

	for i := 0; i <= lenFrase-lenPalavra; i++ {
		match := true
		for j := 0; j < lenPalavra; j++ {
			if frase[i+j] != palavra[j] {
				match = false
				break
			}
		}
		if match {
			count++
		}
	}

	fmt.Printf("A palavra \"%s\" apareceu %d vezes na frase.\n", palavra, count)
}
