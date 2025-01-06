main :: IO ()
main = print $ euler7 6

euler7 :: Int -> Int
euler7 n = primes !! (n - 1)

primes :: [Int]
primes = 2 : 3 : 5 : filter isPrime [7, 9 ..]

isPrime :: Int -> Bool
isPrime n = all (\x -> n `mod` x /= 0) $ takeWhile (\x -> x ^ 2 <= n) primes
