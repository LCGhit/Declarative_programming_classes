import Data.Tuple.Select
alunos = [ ("manuel", 10 , 14, 12, 10), ("maria", 15, 12, 16, 18), ("diogo", 10, 9, 12, 13), ("zaqueu", 10, 9, 10, 10) ]



first (x, _, _, _, _) = x
second (_, x, _, _, _) = x
third (_, _, x, _, _) = x
forth (_, _, _, x, _) = x
fifth (_, _, _, _, x) = x

media a = realToFrac ((second a)+(third a)+(forth a)+(fifth a)) / 4.0

media_das_notas [] = []
media_das_notas (x:xs) = (first x, media x) : media_das_notas xs
