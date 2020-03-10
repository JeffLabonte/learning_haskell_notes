-- file: ch03/Bookstore.hs

type CustomerID = Int
type ReviewBody = String

data BookInfo = Book Int String [String]
               deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)


data BookReview = BookReview BookInfo CustomerID ReviewBody  -- Better Review

type BookRecord = (BookInfo, BookReview)


myInfo = Book 0 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]
