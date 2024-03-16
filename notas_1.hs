notas = [500, 200, 100, 50, 20, 10, 5, 2, 1]
pagacarroFunc a [] = []
pagacarroFunc a (x:xs) | (div a x) /= 0 = (x, (div a x)) : [] ++ pagacarroFunc (rem a x) xs
                            | otherwise = pagacarroFunc a xs
pagacarro a = pagacarroFunc a notas
