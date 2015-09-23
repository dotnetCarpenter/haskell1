-- Here’s a problem that combines tuples and list comprehensions: which
-- right triangle that has integers for all sides and all sides equal to or smaller
-- than 10 has a perimeter of 24?

-- First, let’s try generating all triangles with sides equal to or smaller than 10:
triangles = [ (a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]  ]

rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24 ]
