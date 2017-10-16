soma :: Integer -> Integer
soma 0 = 0
soma x = (x `mod` 10) + soma (x `div` 10)

main = do
    let a = soma 1234
    print a



