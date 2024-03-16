import Data.Char

letra2int c = ord c - ord 'a'
letra2Int c = ord c - ord 'A'
int2letra n = chr(ord 'a' + n)
int2Letra n = chr(ord 'A' + n)
desloca n c | isLower c = int2letra (mod(letra2int c + n) 26)
            | isUpper c = int2Letra (mod(letra2Int c + n) 26)
            | otherwise = c
codifica n xs = [desloca n x | x <- xs]
