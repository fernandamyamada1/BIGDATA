soma :: [[Int]] -> Int
soma [[]] = 0
soma x = sum (diagonal x)

diagonal :: [[Int]] -> [Int]
diagonal x = zipWith (!!) x (reverse [0.. (length (x !! 0)-1)])

main = do
let a = [[]]
print(soma a)
let b = [[2,2], [3,4]]
print(soma b)

