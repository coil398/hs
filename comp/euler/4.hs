main :: IO ()
main = do
  print euler4

euler4 :: Int
euler4 = maximum [x | y <- [100 .. 999], z <- [100 .. y], let x = y * z, let s = show x, s == reverse s]
