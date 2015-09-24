maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs

-- Let’s take an example list of numbers and check out how this would work
-- on them: [2,5,1]. If we call maximum’ on that, the first two patterns won’t match.
-- The third one will and the list is split into 2 and [5,1]. The where clause wants
-- to know the maximum of [5,1], so we follow that route. It matches the third
-- pattern again and [5,1] is split into 5 and [1]. Again, the where clause wants
-- to know the maximum of [1]. Because that’s the edge condition, it returns 1.
-- Finally! So going up one step, comparing 5 to the maximum of [1] (which is
-- 1), we obviously get back 5. So now we know that the maximum of [5,1] is 5.
-- We go up one step again where we had 2 and [5,1]. Comparing 2 with the
-- maximum of [5,1], which is 5, we choose 5.
