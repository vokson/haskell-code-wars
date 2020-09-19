module Disemvowel where

disemvowel :: String -> String
disemvowel [] = []
disemvowel (x:xs)
    | elem x "AEIOUaeiou" = disemvowel xs
    | otherwise = x : (disemvowel xs)