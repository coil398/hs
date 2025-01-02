main :: IO ()
main = do
  let s = sum $ filter check [1 .. 999]
  print s

check :: Int -> Bool
check x = x `mod` 3 == 0 || x `mod` 5 == 0
