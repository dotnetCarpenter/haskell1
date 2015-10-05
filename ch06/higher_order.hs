applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

-- zipWith demo --
------------------
-- zipWith' (+) [4,2,5,6] [2,6,2,3]
-- [6 ,8 ,7 ,9]
-- zipWith' max [6 ,3 ,2 ,1] [7 ,3 ,1 ,5]
-- [7 ,3 ,2 ,5]
-- zipWith' (++) ["foo","bar","baz"] ["fighters","hoppers","aldrin"]
-- ["foofighters","barhoppers","bazaldrin"]
-- zipWith' (*) (replicate 5 2) [1..]
-- [2 ,4 ,6 ,8 ,10]
-- FIXME: Below call doesn't work
-- zipWith' (zipWith' (*)) [[1,2,3],[3,5,6],[2,3,4]]
-- [[3 ,2 ,2] ,[3 ,4 ,5] ,[5 ,4 ,3]]
-- [[3 ,4 ,6] ,[9 ,20 ,30] ,[10 ,12 ,12]]

flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x

map' :: ( a -> b ) -> [ a ] -> [ b ]
map' _ [] = []
map' f (x:xs) = f x : map f xs

filter' :: ( a -> Bool ) -> [ a ] -> [ a ]
filter' _ [] = []
filter' p (x:xs)
  | p x = x: filter' p xs
  | otherwise = filter' p xs
