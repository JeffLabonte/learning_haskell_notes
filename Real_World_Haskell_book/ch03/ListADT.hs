-- file: ch03/ListADT.hs

data List a = Cons a (List a)
            | Nil
              deriving (Show)

data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)


{-
  Excercise From List
-}

fromList (x:xs) = Cons x (fromList xs)
