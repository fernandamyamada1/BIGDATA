persistencia :: Integer -> Integer
persistencia x
    | (x == 0 || x == 1 || x == 2 || x == 3 || x == 4 || x == 5 || x == 6 || x == 7 || x == 8 || x == 9) = 0
    | otherwise = 1 + persistencia (soma x)

soma :: Integer -> Integer
soma 0 = 0
soma x = (x `mod` 10) + soma (x `div` 10)


main = do
    let a = persistencia 1234
    print a
    let b = persistencia 123
    print b
    let c = persistencia 99
    print c
    let d = persistencia 9
    print d



