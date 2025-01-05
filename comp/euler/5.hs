import Data.List (find)
import Data.Maybe (fromJust)

main :: IO ()
main = do
  print $ euler5' 10

euler5 :: Int -> Int
euler5 n = foldl1 lcm [1 .. n]

euler5' :: Int -> Int
euler5' n = fromJust $ find (\x -> all (\m -> x `mod` m == 0) [1 .. n]) [1 ..]
