collatz :: Integer -> Integer
collatz x
    | x == 1 = 1
    | (x `rem` 2 ==0) = x `div` 2
    | otherwise = ((3*x)+1)

collatzLen :: Integer -> Integer
collatzLen x
    | x == 1 = 1
    | otherwise = 1 + collatzLen (collatz x)

aplicaCollatz :: [Integer] -> [Integer]
aplicaCollatz [] = []
aplicaCollatz (x:xs) = collatzLen (x) : aplicaCollatz (xs)

maiorCollatz = maximum (aplicaCollatz [1..1000000])

main = do
    let a = maiorCollatz
    print a






