-- file: ch03/Distinction.hs
a = ("Porpoise", "Grey")
b = ("Table", "Oak")

-- Help make better conclusions
data Cetacean = Cetacean String String
data Furniture = Furniture String String

c = Cetacean "Purpoise" "Grey"
d = Furniture "Table" "Oak"

