collatz :: Integer -> Integer
collatz x
    | x == 1 = 1
    | (x `rem` 2 ==0) = x `div` 2
    | otherwise = ((3*x)+1)



main = do
     print (collatz 4)
     print (collatz 3)





