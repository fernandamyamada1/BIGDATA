import Control.Monad
import Data.List

-- Cria as combinações
values :: (Bounded a, Enum a) => [[a]]
values = permutations [minBound..maxBound]

data Nation = Englishman | Spaniard | Ukrainian | Norwegian | Japanese
    deriving (Bounded, Enum, Eq, Show)
data Color  = Red | Ivory | Green | Yellow | Blue
    deriving (Bounded, Enum, Eq, Show)
data Pet    = Dog | Snails | Fox  | Horse | Zebra
    deriving (Bounded, Enum, Eq, Show)
data Drink  = Tea | Coffee | Milk  | OrangeJuice | Water
    deriving (Bounded, Enum, Eq, Show)
data Smoke  = OldGold | Kools | Chesterfield | Parliament | LuckyStrike
    deriving (Bounded, Enum, Eq, Show)

--Valores pertencentes a mesma casa
same x xs y ys = guard $ (xs, ys) `elem` zip x y

--Valores de casas vizinhas (direita)
right x xs y ys = same y ys   (tail x) xs

--Valores de casas vizinhas (direita ou esquerda)
nextTo x xs y ys =  right  x xs  y ys `mplus` right y ys x xs

--Valor da casa do meio
middle x xs = guard $ x !! 2 == xs

--Valores da primeira casa
first x xs = guard $ head x == xs

--Encontra a resposta
answers = do
    color <- values
    right  color  Green color Ivory
    nation <- values
    first nation Norwegian
    same nation Englishman color Red
    nextTo nation Norwegian color Blue
    drink <- values
    middle drink  Milk
    same nation Ukrainian drink Tea
    same drink  Coffee color Green
    pet <- values
    same nation Spaniard pet Dog
    smoke <- values
    same smoke  OldGold pet Snails
    same color Yellow smoke Kools
    nextTo smoke Chesterfield pet Fox
    nextTo pet Horse smoke Kools
    same smoke LuckyStrike drink OrangeJuice
    same nation Japanese smoke Parliament

    return $ zip5 color nation drink smoke pet

--Printa a resposta
getAnswer = do
    forM_ answers $ (\answer ->  -- for answer in answers:
        do
            mapM_ print answer)

--Main
main = do
    getAnswer
