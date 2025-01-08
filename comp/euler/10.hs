isPrime :: Int -> Bool
isPrime n = is_prime' n 2
  where
    is_prime' n d
      | d * d > n = True
      | n `mod` d == 0 = False
      | otherwise = is_prime' n (d + 1)

primes :: [Int]
primes = 2 : filter isPrime [3, 5 ..]

euler10 :: Int -> Int
euler10 n = sum $ takeWhile (< n) primes

main :: IO ()
main = print $ euler10 2000000
