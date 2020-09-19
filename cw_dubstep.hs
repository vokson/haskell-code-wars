module Codewars.Kata.Dubstep where

songDecoder :: String -> String
songDecoder = unwords . words . go where
    go [] = []
    go ('W':'U':'B':xs) = ' ' : go xs
    go (x:xs) = x : go xs