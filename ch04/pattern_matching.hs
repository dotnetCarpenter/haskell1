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
