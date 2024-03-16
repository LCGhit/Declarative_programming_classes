lostNumbers = [4,8,15,16,23,42]
firstElement = head lostNumbers
lastElement = last lostNumbers

firstElementS = init lostNumbers
lastElementS = tail lostNumbers

aNum = 4
aNumtoString = show aNum
newList = ["arst", aNumtoString]

-- elements between '' are characters, between "" are lists
listOfLists = ["asrtasr","asrtenoeen"]

-- add list to a list of lists
newNewList = ['3','4'] : listOfLists

getElement = newNewList !! 2
-- deleteElement = 'getElement'

someLoop a = [(a !! x) : [] | x <- [0..((length a)-1)]]
