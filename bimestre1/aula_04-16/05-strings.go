package main
import "fmt"
import(
  "bufio"
  "os"
)

// Dados dois strings (um contendo uma frase e outro contendo uma palavra),
// determine o número de vezes que a palavra ocorre na frase.
// Exemplo:
// Para a palavra ANA e a frase :
// ANA E MARIANA GOSTAM DE BANANA
// Resp: Temos que a palavra ANA ocorre 4 vezes na frase.

func main() {
    in := bufio.NewReader(os.Stdin) // prepara in para ler stdin
    line, err := in.ReadString('\n')  // prepara para ler até o enter ou \n
    
    if err != nil {
       fmt.Println("Lido: %s ", line)
    }
}