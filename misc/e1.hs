-- Programa para computar o somatório de números inteiros dentro de um
-- intervalo, incluindo os limites e excluindo-os.
main :: IO()
main = do
    print (somaInc 3 2)
    print (somaExc 3 2)
    print (somaInc 2 3)
    print (somaExc 2 3)
    print (somaInc 2 23)
    print (somaExc 23 2)

-- Somatório inclusivo.
somaInc :: Int -> Int -> Int
somaInc a b | a == b = a
            | a > b = somaInc b (a - 1) + a
            | otherwise = somaInc a (b - 1) + b 

-- Somatório exclusivo.
somaExc :: Int -> Int -> Int
somaExc a b | a == b = 0
            | a == b - 1 = 0
            | b == a - 1 = 0
            | a > b = somaExc b (a - 2) + (a - 1)
            | otherwise = somaExc a (b - 2) + (b - 1)
