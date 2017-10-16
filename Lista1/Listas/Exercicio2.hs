divisivel20 :: Int -> Bool
divisivel20 x = divisivel x [2..20]

divisivel :: Int -> [Int] -> Bool
divisivel _ [] = True
divisivel x y
    | (x `rem` (head y) /= 0) = False
    | otherwise = divisivel x (tail y)

encontra :: Int -> Int
encontra x
    | (divisivel20 x == True) = x
    | otherwise = encontra (x+20)

projectEuler5 ::  Int
projectEuler5 = encontra 20

main = do
    print (projectEuler5)




