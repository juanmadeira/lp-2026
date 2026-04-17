package main
import "fmt"

// Escreva um programa que converta temperaturas de Fahrenheit para Celsius,
// seguindo a equação 𝐶 = ((𝐹−32)×5)/9
func main() {
	var f int

	fmt.Print("Informe a temperatura em ºF: ")
	fmt.Scanf("%d", &f)

	var c int = ((f-32)*5)/9

	fmt.Printf("%dºF = %dºC\n", f, c);
}
