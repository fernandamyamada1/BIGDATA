ehPrimo :: Integer -> Bool
ehPrimo 1 = False
ehPrimo 2 = True
ehPrimo x = ehPrimo2 (x) (x-1)

ehPrimo2 :: Integer -> Integer -> Bool
ehPrimo2 x 2 = nDivide x 2
ehPrimo2 x y = (nDivide x y) && (ehPrimo2 (x) (y-1))

nDivide :: Integer -> Integer -> Bool
nDivide a b = (a `rem` b /=0)

main = do
    let a= ehPrimo 2
    print a
    let b= ehPrimo 4
    print b
    let c= ehPrimo 17
    print c



