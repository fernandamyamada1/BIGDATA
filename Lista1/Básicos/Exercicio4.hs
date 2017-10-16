mult35 :: Int->Bool
mult35 x = (x `rem` 3 == 0) && (x `rem` 5 == 0)


main = do
    let i = mult35 5
    print i
    let i = mult35 3
    print i
    let i = mult35 300
    print i
