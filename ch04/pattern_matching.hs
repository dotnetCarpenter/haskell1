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
