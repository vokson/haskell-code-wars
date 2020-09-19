module Codewars.Triangles where

import Data.List (sort)

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c
    | (all (>0) numbers) && ((numbers !! 0) + (numbers !! 1) > (numbers !! 2)) = True
    | otherwise = False
        where
            numbers = sort [a,b,c] 