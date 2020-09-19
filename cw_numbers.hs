module Kata (highAndLow) where

highAndLow :: String -> String
highAndLow input = show (maximum numbers) ++ " " ++ show (minimum numbers)
    where numbers = map (\x -> read x::Int) (words input)