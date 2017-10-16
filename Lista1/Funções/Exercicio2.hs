ehTriangulo :: Integer -> Integer -> Integer  -> Bool
ehTriangulo x y z = ((x + y) > z) && ((x + z) > y) && ((y + z) > x)

tipoTriangulo :: Integer -> Integer -> Integer  -> String
tipoTriangulo x y z
    | ehTriangulo x y z = defineTipo x y z
    | otherwise = error "Nao eh triangulo"

defineTipo :: Integer -> Integer -> Integer  -> String
defineTipo x y z
    | (x==y) && (y==z) = "Equilatero"
    | (x==y) || (y==z) = "Isosceles"
    |otherwise = "Escaleno"

main = do
    let a= tipoTriangulo 3 4 5
    print a
    let b= tipoTriangulo 1 1 1
    print b
    let c= tipoTriangulo 4 4 6
    print c
    let d= tipoTriangulo 1 1 2
    print d


