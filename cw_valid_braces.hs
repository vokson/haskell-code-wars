module Codewars.Kata.Braces where

validBraces :: String -> Bool
validBraces xs = go xs [] where
    go [] [] = True
    go [] _ = False
    go (x:xs) (ys)
        | x == '(' = go xs (')' : ys)
        | x == '{' = go xs ('}' : ys)
        | x == '[' = go xs (']' : ys)
        | ys == [] = False
        | x /= (head ys) = False
        | otherwise = go xs (tail ys)