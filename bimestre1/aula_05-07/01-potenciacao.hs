-- dados um inteiro x e um inteiro não-negativo n, calcular 𝑥^n
potenciacao :: Int -> Int -> Int
potenciacao x n = x^n

main :: IO ()
main = print (potenciacao 5 3)
