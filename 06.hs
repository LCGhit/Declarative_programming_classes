invert [] = []
invert (a:b) = invert b ++ a:[]

insert a [] = a:[]
insert a (b:c) = if a > b then b:insert a c else a:insert b c

couple _ [] = []
couple [] _ = []

couple (x:xs) (y:ys) = (x,y):couple xs ys

-- [('a',4),('b',2)] -> "aaaabb"
-- "aaaabb" -> [('a',4),('b',2)]

repete a 0 = []
repete a b = [a] ++ repete a (b-1)

decode [] = []
decode (a:b) = repete (head a) (last a) ++ decode b

encode a = [head a, length a]
