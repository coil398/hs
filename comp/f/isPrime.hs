isPrime :: Int -> Bool
isPrime n
  | n < 2 = False
  | n == 2 = True
  | even n = False
  | otherwise = all (\x -> n `mod` x /= 0) [2 .. floor $ sqrt $ fromIntegral n]

-- Example
main :: IO ()
main = print $ isPrime 11
