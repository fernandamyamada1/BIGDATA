multEtiope :: Integer ->Integer -> Integer
multEtiope 1 n = n
multEtiope m n
    | par m = multEtiope (m`div`2) (n*2)
    | otherwise = multEtiope (m `div` 2) (n*2) + n

par :: Integer -> Bool
par a = (a `rem` 2 == 0)

main = do
    let r = multEtiope 14 12
    print r


