package main
import "fmt"

// Dado um inteiro positivo n, verificar se n é primo
func main() {
	var n int

	fmt.Print("Informe um número para verificar se é primo: ")
	fmt.Scanf("%d", &n)

	var primo bool = true

	for i := n-1; i > 1; i-- {
		if n % i == 0 {
			primo = false
		}
	}

	if primo {
		fmt.Printf("O número %d é primo\n", n);
	} else {
		fmt.Printf("O número %d não é primo\n", n);
	}
}
