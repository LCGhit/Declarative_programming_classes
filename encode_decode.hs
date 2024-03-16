repet (x, 0) = []
repet (x, y) = [(x)] ++ repet (x, (y-1))

decodeRLE [] = []
decodeRLE (x:xs) = repet x ++ decodeRLE xs

comprime x = (head(x), length(x))
encodeRLE x = map comprime (group x)
