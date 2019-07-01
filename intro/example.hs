processingString :: String -> Int

processingString = undefined

data  Compass = North | East | South | West
  deriving (Eq, Ord, Enum, Show)

data Expression = Number Int
  | Add Expression Expression
  | Sub Expression Expression
  deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)  
calculate (Sub x y) = (calculate x) - (calculate y)

newHead [] = error "empty list"
newHead (x:xs) = x

newTail [] = error "empty list"
newTail (x:xs) = xs
