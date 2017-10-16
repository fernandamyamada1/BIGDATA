mult5 :: Int->Bool
mult5 x = (x `rem` 5 == 0)

main = do
    let i = mult5 5
    print i
    let i = mult5 27
    print i
