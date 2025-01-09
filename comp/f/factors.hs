factors :: Int -> [Int]
factors n = factorize n 2

factorize :: Int -> Int -> [Int]
factorize n f
  | n == 1 = []
  | n `mod` f == 0 = f : factorize (n `div` f) f
  | otherwise = factorize n (f + 1)
