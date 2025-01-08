isPrime :: Int -> Bool
isPrime n
  | n < 2 = False
  | n == 2 = True
  | even n = False
  | otherwise = all (\x -> n `mod` x /= 0) $ takeWhile (\x -> x ^ 2 <= n) primes

primes :: [Int]
primes = 2 : filter isPrime [3, 5 ..]

euler10 :: Int -> Int
euler10 n = sum $ takeWhile (< n) primes

main :: IO ()
main = print $ euler10 2000000
