part1 = "4 00"
part2 = "7 30"
part3 = "8 30"

dur1 = "3 20"
dur2 = "0 42"
dur3 = "0 15"
uniClass = "9 00"

-- turn string variable into list
duration1 = words dur1
-- new list with reverse order
duration1Reverse = reverse duration1

-- turn list items into integer variables
dur1hour = read (head duration1) :: Integer
dur1min = read (head duration1Reverse) :: Integer

-- turn hours into minutes and add both variables
dur1Int = dur1hour*60 + dur1min

duration2 = words dur2
duration2Reverse = reverse duration2
dur2hour = read (head duration2) :: Integer
dur2min = read (head duration2Reverse) :: Integer
dur2Int = dur2hour*60 + dur2min

duration3 = words dur3
duration3Reverse = reverse duration3
dur3hour = read (head duration3) :: Integer
dur3min = read (head duration3Reverse) :: Integer
dur3Int = dur3hour*60 + dur3min

listPart1 = words part1
listPart1Reverse = reverse listPart1
part1Hour = read (head listPart1) :: Integer
part1Min = read (head listPart1Reverse) :: Integer
part1Int = part1Hour*60 + part1Min

listPart2 = words part2
listPart2Reverse = reverse listPart2
part2Hour = read (head listPart2) :: Integer
part2Min = read (head listPart2Reverse) :: Integer
part2Int = part2Hour*60 + part2Min

listPart3 = words part3
listPart3Reverse = reverse listPart3
part3Hour = read (head listPart3) :: Integer
part3Min = read (head listPart3Reverse) :: Integer
part3Int = part3Hour*60 + part3Min

classStart = words uniClass
classStartReverse = reverse (words uniClass)
classHour = read (head classStart) :: Integer
classMin = read (head classStartReverse) :: Integer
classInt = classHour*60 + classMin

isPossible = part1Int+dur1Int <= part2Int && part2Int+dur2Int <= part3Int

isViable = isPossible && part3Int+dur3Int <= classInt

arrivalTimeAdd = (part3Int + dur3Int)
arrivalHour = show (arrivalTimeAdd `quot` 60)
arrivalMin = show (arrivalTimeAdd `rem` 60)
arrivalTime = arrivalHour ++ ":" ++ arrivalMin

ifFun | isViable = "You'll arrive in time, at " ++ arrivalTime
      | otherwise = "You're late! You'll arrive at " ++ arrivalTime
