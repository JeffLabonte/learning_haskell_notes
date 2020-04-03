
triples :: [(Integer, Integer, Integer)]
triples = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10] ]

rightTriangles :: [(Integer, Integer, Integer)]
rightTriangles = [ (a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10], a^2 + b^2 == c^2 ]


rightTriangles' :: [(Integer, Integer, Integer)]
rightTriangles' = [ (a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24 ] 