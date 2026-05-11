-- escreva um programa que converta temperaturas de fahrenheit para celsius, seguindo a equação c = ((f-32)*5)/9
fahrenheittocelsius :: Int -> Int
fahrenheittocelsius x = ((x-32)*5) `div` 9

main :: IO ()
main = print (fahrenheittocelsius 50)
