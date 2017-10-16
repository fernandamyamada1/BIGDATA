pascal :: Integer -> Integer -> Integer
pascal _ 0 = 1
pascal n 1 = n
pascal n k
    | n>k = (pascal (n-1) (k-1)) + (pascal (n-1) (k))
    | n==k = 1
    | otherwise = error "Não é possível calcular com esses coeficientes"


main = do
    let a = pascal 4 2
    print a



