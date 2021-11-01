module Kata (highAndLow) where

highAndLow :: String -> String
highAndLow input = (show $ maximum nums) ++ " " ++ (show $ minimum nums)
    where nums = map (\x -> read x :: Int) (words input)