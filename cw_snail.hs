module Snail where

snail :: [[Int]] -> [Int]
snail [[]] = []
snail [[a]] = [a]
snail (x:xs) = x ++ map last xs ++ snail (reverse $ (map (reverse . init) xs))