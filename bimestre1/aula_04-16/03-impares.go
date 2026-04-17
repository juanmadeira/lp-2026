package main
import "fmt"

// Dado um número inteiro positivo n, imprimir os n primeiros naturais ímpares
func main() {
	var n int

	fmt.Print("Informe a quantidade de números naturais ímpares desejada: ")
	fmt.Scanf("%d", &n)

	for n = n*2; n > 0; n -- {
		if n % 2 != 0 {
			fmt.Printf("%d\n", n);
		}
	}
}
