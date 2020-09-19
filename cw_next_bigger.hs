module NextBigger (nextBigger) where
import Data.List (sort)

nextBigger :: Int -> Int
nextBigger a = go (length (show a) - 1) a where
    go :: Int -> Int -> Int
    go n a
        | n < 0 = -1
        | value > a = value
        | value <= a = go (n-1) a
            where
                value = read (take n (show a) ++ helper (drop n (show a))) :: Int where
                    helper :: [Char] -> [Char]
                    helper [y] = [y]
                    helper (y:ys)
                        | length r > 0 = [head r] ++ l ++ (tail r)
                        | otherwise = l
                        where
                            p = break (> y) (sort (y:ys))
                            l = fst p
                            r = snd p