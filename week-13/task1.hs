main :: IO()
main = do
    print $ crackall ['A'..'Z'] "FYYFHPQTSITSYTRTWWTBFYYJSFR" -- ["EXXEGOPSRHSRXSQSVVSAEXXIREQ","DWWDFNORQGRQWRPRUURZDWWHQDP","CVVCEMNQPFQPVQOQTTQYCVVGPCO","BUUBDLMPOEPOUPNPSSPXBUUFOBN","ATTACKLONDONTOMORROWATTENAM","ZSSZBJKNMCNMSNLNQQNVZSSDMZL","YRRYAIJMLBMLRMKMPPMUYRRCLYK","XQQXZHILKALKQLJLOOLTXQQBKXJ","WPPWYGHKJZKJPKIKNNKSWPPAJWI","VOOVXFGJIYJIOJHJMMJRVOOZIVH","UNNUWEFIHXIHNIGILLIQUNNYHUG","TMMTVDEHGWHGMHFHKKHPTMMXGTF","SLLSUCDGFVGFLGEGJJGOSLLWFSE","RKKRTBCFEUFEKFDFIIFNRKKVERD","QJJQSABEDTEDJECEHHEMQJJUDQC","PIIPRZADCSDCIDBDGGDLPIITCPB","OHHOQYZCBRCBHCACFFCKOHHSBOA","NGGNPXYBAQBAGBZBEEBJNGGRANZ","MFFMOWXAZPAZFAYADDAIMFFQZMY","LEELNVWZYOZYEZXZCCZHLEEPYLX","KDDKMUVYXNYXDYWYBBYGKDDOXKW","JCCJLTUXWMXWCXVXAAXFJCCNWJV","IBBIKSTWVLWVBWUWZZWEIBBMVIU","HAAHJRSVUKVUAVTVYYVDHAALUHT","GZZGIQRUTJUTZUSUXXUCGZZKTGS"]
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