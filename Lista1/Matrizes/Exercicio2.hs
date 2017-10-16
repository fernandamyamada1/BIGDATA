soma :: [[Int]] -> Int
soma [[]] = 0
soma x = sum (diagonal x)

diagonal :: [[Int]] -> [Int]
diagonal x = zipWith (!!) x [0..]

main = do
    let a = [[]]
    print(soma a)
    let b = [[1,2], [3,4]]
    print(soma b)






