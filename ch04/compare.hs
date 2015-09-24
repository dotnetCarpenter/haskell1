compare' :: (Ord a) => a -> a -> Ordering
a `compare'` b
  | a > b   = GT
  | a == b  = EQ
  | a < b  = LT
