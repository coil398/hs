main :: IO ()
main = do
  [a1, a2, a3] <- map read . words <$> getLine
  print (a1 + a2 + a3)
