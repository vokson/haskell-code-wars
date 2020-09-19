module Isogram where

import Data.List
import Data.Char

isIsogram :: String -> Bool
isIsogram = helper Nothing . sort . map toLower where
    helper :: Maybe Char -> [Char] -> Bool
    helper _ [] = True
    helper a (x:xs)
        | a == Just x = False
        | otherwise = helper (Just x) xs

isIsogram' :: String -> Bool
isIsogram' str = null $ (map toLower str) \\ ['a'..'z']