module Codewars.Kata.SplitStrings where

solution :: String -> [String]
solution [] = []
solution [x] = [x:['_']]
solution (x:y:xs) = (x:[y]) : (solution xs)