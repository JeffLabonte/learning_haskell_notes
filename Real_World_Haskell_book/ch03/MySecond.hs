-- file: ch03/MySeconds.hs
mySecond :: [a] -> a

mySecond xs = if null (tail xs)
              then error "list too short"
              else head (tail xs)

safeSecond xs = if null (tail xs)
                then Nothing
                else Just (head (tail xs))