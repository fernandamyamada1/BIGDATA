lista = 1 : 2 : prox lista
    where
        prox (x : t@(y:_)) = (x+y) : prox t

soma :: Integer
soma = somaPares (take 4000000 lista)

somaPares :: [Integer] -> Integer
somaPares [x]
    | x `rem` 2 == 0 = x
    | otherwise = 0
somaPares (x:xs)
    | x `rem` 2 == 0 = x + somaPares xs
    | otherwise = somaPares xs



main = do
     print (soma)





