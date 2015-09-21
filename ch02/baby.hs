doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else x*2

conanOBrien = " It’s a-me, ConanO’Brien!"
