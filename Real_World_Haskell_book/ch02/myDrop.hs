-- file: ch02/myDrop.hs

myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n - 1) (tail xs)

-- exercise Chapter 02
lastButOne :: [a] -> a
lastButOne xs = xs !! ((length xs) - 2) -- Running with too short array, errors negative index
