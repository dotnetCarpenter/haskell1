bmiTell :: (Show a, RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo, you! bmi: " ++ show bmi
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly! bmi: " ++ show bmi
  | bmi <= fat    = "You're fat! Lose some weight, fatty! bmi: " ++ show bmi
  | otherwise     = "You're a whale, congratulations! bmi: " ++ show bmi
  where
    bmi = weight / height ^ 2
    (skinny, normal, fat) = (18.5, 25, 30)

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi w h | (w, h) <- xs]
    where
      bmi weight height = weight / height ^ 2

calcBmis' :: (RealFloat a) => [(a, a)] -> [a]
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]
