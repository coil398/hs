import Control.Monad (guard)

main :: IO ()
main = do
  [n, s] <- map read . words <$> getLine
  a <- map read . words <$> getLine
  if solve n s a
    then putStrLn "YES"
    else putStrLn "NO"

solve :: Int -> Int -> [Int] -> Bool
solve n s a = any (\subset -> sum subset == s) (subsets a)

subsets :: [Int] -> [[Int]]
subsets [] = [[]]
subsets (x : xs) =
  let rest = subsets xs
   in rest ++ map (x :) rest
