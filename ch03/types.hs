-- Char stands for character (ie. 'a'). A String is a list of characters
-- So [Char] is equalant to String (ie. ['A','n','i'] == "Ani").
removeNonUpperCase :: String -> String
removeNonUpperCase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Int stands for integer. It’s used for whole numbers. 7 can be an Int but 7.2
-- cannot. Int is bounded, which means that it has a minimum and a maximum
-- value. Usually on 32-bit machines the maximum possible Int is 2147483647
-- and the minimum is -2147483648. On 64-bit it's 9223372036854775807 to
-- -9223372036854775808
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

-- Integer
-- stands for, er... also integer. The main difference is that it’s not
-- bounded so it can be used to represent really really big numbers. I mean like
-- really big. Int, however, is more efficient.
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Float is a real floating point with single precision.
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double is a real floating point with double the precision
circumference' :: Double -> Double
circumference' r = 2 * pi * r

-- Bool is a boolean type. It can have only two values: True and False.
-- Char represents a character. It’s denoted by single quotes. A list of characters is a string.

-- Tuples are types but they are dependent on their length as well as the
-- types of their components, so there is theoretically an infinite number of tuple
-- types, which is too many to cover in this tutorial. Note that the empty tuple
-- () is also a type which can only have a single value: ()
