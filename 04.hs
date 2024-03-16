main = do
  line <- getLine
  processIt line
  main

processIt s = do
  print (length s)
