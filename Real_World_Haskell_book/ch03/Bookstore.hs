-- file: ch03/Bookstore.hs

data BookInfo = Book Int String [String]
               deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 0 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]
