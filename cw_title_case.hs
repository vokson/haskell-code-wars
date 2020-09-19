module TitleCase (titleCase) where

import Data.Char (toLower, toUpper)

toLowerWord :: String -> String
toLowerWord [] = []
toLowerWord (x:xs) = (toLower x) : toLowerWord xs

toLowerWords :: String -> [String]
toLowerWords = map toLowerWord . words

toCapitalWord :: String -> String
toCapitalWord [] = []
toCapitalWord (x:xs) = (toUpper x) : toLowerWord xs

titleCase :: String -> String -> String
titleCase minor title = titleCaseWords (toLowerWords minor) (toLowerWords title)
    where
        titleCaseWords _ [] = ""
        titleCaseWords minor_words (first_word:other_words) = 
            unwords $ (toCapitalWord first_word) : (map (\x -> if elem x minor_words then toLowerWord x else toCapitalWord x) other_words)

