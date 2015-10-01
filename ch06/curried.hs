-- max 4 5 == (max 4) 5
-- every function in haskell takes only one parameter so all multiple parameter functions in haskell are curried functions

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * x

-- calling a function that takes two parameters with one parameter will return a function
-- that take the second parameter. Here is an example with "compare"
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100 -- compare takes two parameter, e.i. compare 100 101

-- infix partial applied function
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])
