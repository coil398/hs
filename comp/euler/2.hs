main :: IO ()
main = do
  let s = sumEvenFibs 4000000
  print s

sumEvenFibs :: Int -> Int
sumEvenFibs n = sum $ takeWhile (<= n) $ filter even $ drop 2 fib

fib = 0 : 1 : zipWith (+) fib (tail fib)
