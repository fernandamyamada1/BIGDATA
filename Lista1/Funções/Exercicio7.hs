bi :: Integer -> Integer -> Integer
bi n 0 = 1
bi 0 k = 0
bi n k =   (n `div` k) * (bi (n-1) (k-1))

main = do
    let a = bi 4 2
    print a



