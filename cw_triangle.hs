module Codewars.Triangles where

import Data.List (sort)

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c =  if (nums !! 0) + (nums !! 1) > (nums !! 2) then True else False where nums = sort [a,b,c]