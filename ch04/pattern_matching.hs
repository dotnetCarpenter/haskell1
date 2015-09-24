lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "Et!"
sayMe 2 = "To!"
sayMe 3 = "Tre!"
sayMe 4 = "Fire!"
sayMe 5 = "Fem!"
sayMe 6 = "Seks!"
sayMe 7 = lucky 7
sayMe x = "Ikke mellem 0 og 8"

addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
--addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a,b,c) -> a
first (x, _, _) = x
second :: (a,b,c) -> b
second (_, x, _) = x
third :: (a,b,c) -> c
third (_, _, x) = x

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, stupid!"
head' (x:_) = x
-- the head' [] pattern match is actually syntactic sugar for the following:
head2 :: [a] -> a
head2 xs = case xs of
  [] -> error "No head for empty lists!"
  (x:_) -> x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
-- could also be written as list literal [x]
tell (x:[]) = "The list has one element: " ++ show x
-- could also be written as list literal [x,y]
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

-- This is similar to the factorial function we wrote earlier. First we defined
-- the result of a known input — the empty list. This is also known as the edge
-- condition. Then in the second pattern we take the list apart by splitting it
-- into a head and a tail. We say that the length is equal to 1 plus the length of
-- the tail. We use _ to match the head because we don’t actually care what it
-- is. Also note that we’ve taken care of all possible patterns of a list. The first
-- pattern matches an empty list and the second one matches anything that isn’t
-- an empty list.
-- Let’s see what happens if we call length’ on "ham". First, it will check if it’s an
-- empty list. Because it isn’t, it falls through to the second pattern. It matches on
-- the second pattern and there it says that the length is 1 + length’ "am", because
-- we broke it into a head and a tail and discarded the head. O-kay. The length’ of
-- "am" is, similarly, 1 + length’ "m". So right now we have 1 + (1 + length’ "m").
-- length’ "m" is 1 + length’ "" (could also be written as 1 + length’ []). And we’ve
-- defined length’ [] to be 0. So in the end we have 1 + (1 + (1 + 0)).

length' :: (Num b) => [a] -> b
length' [] = 0 -- pattern matching (edge condition)
length' (_:xs) = 1 + length' xs -- recursive

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs
