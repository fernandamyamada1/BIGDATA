collatz :: Integer -> Integer
collatz x
    | x == 1 = 1
    | (x `rem` 2 ==0) = x `div` 2
    | otherwise = ((3*x)+1)

collatzLen :: Integer -> Integer
collatzLen x
    | x == 1 = 1
    | otherwise = 1 + collatzLen (collatz x)


main = do
print (collatzLen 1)
print (collatzLen 2)
print (collatzLen 3)
print (collatzLen 4)
print (collatzLen 5)
print (collatzLen 6)








