separa :: String -> [Int]
separa [] = []
separa [a]= [ transforma a]
separa s = transforma(head s):separa (tail s)

transforma :: Char -> Int
transforma '0' = 0
transforma '1' = 1
transforma '2' = 2
transforma '3' = 3
transforma '4' = 4
transforma '5' = 5
transforma '6' = 6
transforma '7' = 7
transforma '8' = 8
transforma '9' = 9

main = do
    let n = "0123456789"
    let n2 = separa n
    print n2



