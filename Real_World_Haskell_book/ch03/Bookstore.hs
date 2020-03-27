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


-- Billing Info Type - Algebraic data types

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                | CashOnDelivery
                | Invoice CustomerID
                deriving (Show)


bookId      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors


nicerID       (Book id _      _      ) = id
nicerTitle    (Book _  title  _      ) = title
nicerAuthors  (Book _  _      authors) = authors


