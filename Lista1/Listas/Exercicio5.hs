prod :: [Int] -> [Int] -> Int
prod a b = sum (zipWith (*) a b)


main = do
     print (prod [1, 7] [2,-3])
     print (prod [3, 4] [-2,5])





