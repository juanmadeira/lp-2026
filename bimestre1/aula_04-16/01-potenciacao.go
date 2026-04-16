package main
import (
	"fmt"
	"math"
)

// Dados um inteiro x e um inteiro não-negativo n, calcular 𝑥^𝑛

func main() {
	var x int
	var n int

	fmt.Print("Informe um número inteiro x: ")
	fmt.Scanf("%d", &x)

	fmt.Print("Informe um número inteiro não-negativo n: ")
	fmt.Scanf("%d", &n)
	for n < 0 {
		fmt.Print("Informe um número inteiro NÃO-NEGATIVO n: ")
		fmt.Scanf("%d", &n)
	}

	result := int(math.Pow(float64(x), float64(n)))
	fmt.Printf("%d elevado a %d é %d\n", x, n, result)
}