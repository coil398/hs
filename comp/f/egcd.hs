egcd :: Integer -> Integer -> Integer
egcd a b
  | a == 0 = b
  | b == 0 = a
  | a > b = egcd (a `mod` b) b
  | otherwise = egcd a (b `mod` a)

-- Example
main :: IO ()
main = print $ egcd 777 123
