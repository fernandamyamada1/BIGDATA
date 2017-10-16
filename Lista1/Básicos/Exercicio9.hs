bissexto :: Int -> Bool
bissexto ano = (ano `rem` 400 == 0) || ((ano `rem` 4 == 0) && (ano `rem` 100 /= 0))

listaBissexto :: [Int]->[Int]
listaBissexto []=[]
listaBissexto [a]
    | bissexto a = [a]
    | otherwise = []
listaBissexto (x:xs)
    | bissexto x = x : listaBissexto xs
    | otherwise = listaBissexto xs

main = do
    let all = [1,2..2017]
    let bi = listaBissexto all
    let bi2= take 10 bi
    let bi3= drop (length bi - 10) bi
    print bi2
    print bi3


