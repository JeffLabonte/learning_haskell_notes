doubleMe x = x * 2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

nouns = ["dude","gall","partner"]
adjectives = ["nice","honorable","dishonorable"]
buildStrings = [adjective ++ " " ++ noun| adjective <- adjectives, noun <- nouns]

length' xs = sum [1 |_<-xs]

{-
It requires a list of list with numbers
e.g: [ [0,2,4,5,6,7,8,10], [2,4,6,7,8,9] ]
-}
retriveveEvenNumberFromList xss = [ [x | x <- xs, even x ] | xs <- xss]

