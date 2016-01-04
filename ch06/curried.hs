-- max 4 5 == (max 4) 5
-- every function in haskell takes only one parameter so all multiple parameter functions in haskell are curried functions

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * x

-- calling a function that takes two parameters with one parameter will return a function
-- that take the second parameter. Here is an example with "compare"
compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100 -- compare takes two parameter, e.i. compare 100 101

-- infix partial applied function:
-- To section an infix function, simply surround it with parentheses and only supply a parameter
-- on one side. That creates a function that takes one parameter and then applies it to the side that's
-- missing an operand. divideByTen 200 is equivalent to doing 200 / 10, as is doing (/10) 20
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])
