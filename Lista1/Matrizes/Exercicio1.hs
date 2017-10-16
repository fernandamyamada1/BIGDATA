linha :: Int -> Int -> [Int]
linha 0 x = []
linha n x
    | n==x = 1:linha (n-1) x
    | otherwise = 0:linha (n-1) x

mat :: Int -> Int -> [[Int]]
mat n 1 = [linha n 1]
mat n x = linha n x : mat n (x-1)

geraMat :: Int -> [[Int]]
geraMat 0 = [[]]
geraMat n = mat n n

main = do
    print (geraMat 0)
    print (geraMat 5)

