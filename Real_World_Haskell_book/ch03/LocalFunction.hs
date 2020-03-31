-- file: ch03/LocalFunction.hs
pluralise :: String -> [Int] -> [String]
pluralise word counts = map plural counts
    where plural 0 = "no " ++ word ++ "s"
          plural 1 = "one " ++ word
          plural n = show n ++ " " ++ word ++ "s"

{-
*Main> pluralise "guy" [3,4,5,6]
["3 guys","4 guys","5 guys","6 guys"]
-}