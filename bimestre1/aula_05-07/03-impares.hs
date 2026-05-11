-- dado um número inteiro positivo n, imprimir os n primeiros naturais ímpares
imprimir :: Int -> IO ()
imprimir n = aux n 1
    where
        aux 0 _ = return ()
        aux k x = do
            print x
            aux (k - 1) (x + 2)

main :: IO ()
main = imprimir 5
