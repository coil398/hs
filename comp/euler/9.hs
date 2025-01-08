main :: IO ()
main = do
  print $ euler9 1000

euler9 :: Int -> Int
euler9 n = head [a * b * c | a <- [1 .. n], b <- [a .. n], let c = n - a - b, a ^ 2 + b ^ 2 == c ^ 2]
