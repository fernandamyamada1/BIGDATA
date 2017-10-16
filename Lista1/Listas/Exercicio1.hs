divisivel20 :: Int -> Bool
divisivel20 x = divisivel x [1..20]



divisivel :: Int -> [Int] -> Bool
divisivel _ [] = True
divisivel x y = (x `rem` (head y) == 0) && divisivel x (tail y)

main = do
    let a = 40
    print (divisivel20 a)
    let b= 1*2*3*4*5*6*7*8*9*10*11*12*13*14*15*16*17*18*19
    print (divisivel20 b)




