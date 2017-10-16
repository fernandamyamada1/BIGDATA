sinx2 :: Float -> (Float, Float)
sinx2 x = (-sqrt((1-cos x)/2),sqrt((1-cos x)/2))


main = do
    let i = sinx2 0
    print i
    let i = sinx2 pi
    print i

