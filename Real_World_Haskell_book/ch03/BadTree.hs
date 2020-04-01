-- file: ch03/BadTree.hs

{- 
bad_nodesAreSame (Node a _ _) (Node a _ _) = Just a

bad_nodesAreSame _              _           = Nothing
-}
data Node = Node Int Int Int

nodesAreSame :: Node -> Node -> Maybe Int
nodesAreSame (Node a _ _) (Node b _ _)
    | a == b      = Just a
nodesAreSame _  _ = Nothing

