comp :: Integer->Bool
comp x = ((x<(-1)) || (x>1 && x `rem` 2 == 0))


main = do
    let i = comp (-5)
    print i
    let i = comp 3
    print i
    let i = comp 300
    print i
