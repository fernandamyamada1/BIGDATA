lista = 1 : 2 : prox lista
    where
        prox (x : t@(y:_)) = (x+y) : prox t

main = do
     print (take 10 lista)





