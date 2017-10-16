div2d :: Integer -> Double
div2d x = fromInteger x / 2


main = do
    let i = div2d (-5)
    print i
    let i = div2d 3
    print i
    let i = div2d 300
    print i
