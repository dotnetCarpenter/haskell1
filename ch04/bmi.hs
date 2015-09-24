bmiTell :: (Show a, RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= skinny = "You're underweight, you emo, you! bmi: " ++ show bmi
  | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly! bmi: " ++ show bmi
  | bmi <= fat    = "You're fat! Lose some weight, fatty! bmi: " ++ show bmi
  | otherwise     = "You're a whale, congratulations! bmi: " ++ show bmi
  where
    bmi = weight / height ^ 2
    skinny = 18.5
    normal = 25
    fat    = 30
