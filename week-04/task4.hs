import Data.List

main :: IO()
main = do
    print $ sortN 1714 -- 7411
    print $ sortN 123450 -- 543210
    print $ sortN 123405 -- 543210
    print $ sortN 123045 -- 543210
    print $ sortN 120345 -- 543210
    print $ sortN 102345 -- 543210
    print $ sortN 8910 -- 9810
    print $ sortN 321 -- 321
    print $ sortN 29210 -- 92210
    print $ sortN 1230 -- 3210
    print $ sortN 55345 -- 55534
    print $ sortN 14752 -- 75421
    print $ sortN 329450 -- 954320
    print $ sortN 9125 -- 9521
    return ()

toList :: Int -> [Int]
toList n
 | n < 10 = [n]
 | otherwise = mod n 10 : toList (div n 10)

sortN :: Int -> [Int]
sortN n = reverse $ sort $ toList n