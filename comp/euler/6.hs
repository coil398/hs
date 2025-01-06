main :: IO ()
main = do
  print $ euler6 100

euler6 :: Int -> Int
euler6 n = sum [1 .. n] ^ 2 - sum (map (^ 2) [1 .. n])
