-- calling a function that takes two parameters with one parameter will return a function
-- that take the second parameter. Here is an example with "compare"
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100 -- compare takes two parameter, e.i. compare 100 101