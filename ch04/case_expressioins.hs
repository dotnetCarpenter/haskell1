describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x]-> "a singleton list."
                                               xs -> "a longer list."

-- Because pattern matching in function definitions is syntactic
-- sugar for case expressions, we could have also defined this like so:
describeList' :: [a] -> String
describeList' xs = "The list is " ++ what xs
    where
      what [] = "empty."
      what [x]= "a singleton list."
      what xs = "a longer list."
