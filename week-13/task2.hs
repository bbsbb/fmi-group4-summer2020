import Data.List

main :: IO()
main = do
    print $ substring "Haskell" "Haskell Curry" -- True
    print $ substring "Curry" "Haskell Curry" -- True
    print $ substring "Turing" "Haskell Curry" -- False
    return ()

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