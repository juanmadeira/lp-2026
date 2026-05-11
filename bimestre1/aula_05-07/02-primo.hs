-- dado um inteiro positivo n, verificar se n é primo
primo :: Int -> String
primo x
  | x < 2 = "nao eh primo"
  | divisor x 2 = "nao eh primo"
  | otherwise = "eh primo"

divisor :: Int -> Int -> Bool
divisor x i
  | i * i > x      = False
  | x `mod` i == 0 = True
  | otherwise      = divisor x (i + 1)

main :: IO ()
main = print (primo 12)
