
addToLength :: (Num b) => [a] -> b -> b

addToLength a b = fromIntegral (length a) + b

testAddToLength = addToLength [1..3] 5.5
