-- file: ch01/WC.hs
-- lines beiginning with "--" are comments.

main :: IO()
main = interact wordCount
-- Count Lines
--  where wordCount input = show  (length (lines input)) ++ "\n"
-- Count words
-- where wordCount input = show (length (words input)) ++ "\n"
 where wordCount input = show (length input) ++ "\n"