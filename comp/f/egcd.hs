egcd :: Integer -> Integer -> Integer
egcd a 0 = a
egcd a b = egcd b (a `mod` b)

-- Example
main :: IO ()
main = print $ egcd 777 123
