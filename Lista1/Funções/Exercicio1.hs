ehTriangulo :: Integer -> Integer -> Integer  -> Bool
ehTriangulo x y z = ((x + y) > z) && ((x + z) > y) && ((y + z) > x)

main = do
    let a= ehTriangulo 3 4 5
    print a
    let b= ehTriangulo 1 1 1
    print b
    let c= ehTriangulo 1 1 2
    print c


