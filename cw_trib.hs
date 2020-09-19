module Tribonacci where

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci (a, b, c) 0 = []
tribonacci (a, b, c) 1 = [a]
tribonacci (a, b, c) 2 = [a,b]
tribonacci (a, b, c) 3 = [a,b,c]
tribonacci (a, b, c) n = (tribonacci (a, b, c) 3) ++ map (\(x,y,z) -> z) (take (n-3) (iterate (\(x,y,z) -> (y,z,x+y+z)) (b,c,a+b+c)))

