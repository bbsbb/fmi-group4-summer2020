main :: IO()
main = do
    print $ polyencrypt ['A'..'Z'] 5 1 7 "ATTACKLONDONTOMORROWATTENAM" -- "FYYFHPQUTJUTZUTVYYVDHBBMVIU"
    return ()

polyencrypt :: [Char] -> Int -> Int -> Int -> String -> String
polyencrypt _ _ _ _ [] = []
polyencrypt alphabet offset step blockSize normalized = (encrypt (take blockSize normalized)) ++ polyencrypt alphabet (offset+step) step blockSize (drop blockSize normalized)
 where
     encrypt input = map (encode alphabet) input
      where
          encode alphabet char = alphabet!!(mod (offset + (helper alphabet)) (length alphabet))
           where
               helper (x:xs)
                | x == char = 0
                | otherwise = 1 + helper xs