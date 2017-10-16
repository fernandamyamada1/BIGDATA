mult3 :: Int->Bool
mult3 x = (x `rem` 3 == 0)

main = do
    let i = mult3 4
    print i
    let i = mult3 27
    print i
