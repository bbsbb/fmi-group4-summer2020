main :: IO()
main = do
    print $ crackcandidates ['A'..'Z'] ["THE","AND","AT","ON","IS"] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- ["ATTACKLONDONTOMORROWATTENAM"]
    return ()

encrypt :: [Char] -> String -> Int -> String
encrypt alphabet input k = map (encode alphabet) input
 where
     encode alphabet char = alphabet!!(mod (k + (helper alphabet)) (length alphabet))
      where
       helper (x:xs)
        | x == char = 0
        | otherwise = 1 + helper xs

crackall :: [Char] -> String -> [String]
crackall alphabet input = helper (length alphabet - 1)
 where
     helper k
      | k == 0 = []
      | otherwise = (encrypt alphabet input k) : helper (k-1)

substring :: String -> String -> Bool
substring [] _ = True
substring _ [] = False
substring checkWith@(x:xs) (y:ys)
 | x == y = helper xs ys
 | otherwise = substring checkWith ys
  where
      helper :: String -> String -> Bool
      helper [] _ = True
      helper _ [] = False
      helper (x:xs) (y:ys)
       | x == y = helper xs ys
       | otherwise = False

crackcandidates :: [Char] -> [String] -> String -> [String]
crackcandidates alphabet commonWords input = [ xs | xs <- (crackall alphabet input), any (==True) [ substring ys xs | ys <- commonWords]]