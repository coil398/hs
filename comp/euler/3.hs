main :: IO ()
main = do
  print $ euler3 600851475143

euler3 :: Int -> Int
euler3 n = maximum $ primeFactors n

primeFactors :: Int -> [Int]
primeFactors n = primeFactors' n 2

primeFactors' :: Int -> Int -> [Int]
primeFactors' n d
  | n == 1 = []
  | n `mod` d == 0 = d : primeFactors' (n `div` d) d
  | otherwise = primeFactors' n (d + 1)
