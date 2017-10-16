conc :: String -> String -> String
conc s1 s2 = s1 ++ " " ++ s2

main = do
    let s1= "Hello"
    let s2= "World"
    let c = conc s1 s2
    print c

