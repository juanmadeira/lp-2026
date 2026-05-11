primo :: Int -> String
primo x
  | x < 2 = "nao eh primo" -- OBS.: compilador online nao aceita acentos o/
  | divisor x 2 = "nao eh primo"
  | otherwise = "eh primo"

divisor :: Int -> Int -> Bool
divisor x i
  | i * i > x      = False
  | x `mod` i == 0 = True
  | otherwise      = divisor x (i + 1)

main :: IO ()
main = print (primo 12)