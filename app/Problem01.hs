module Problem01 where

import Data.List

ans :: Integral a => a -> a
ans lim = sum [x | x <- [1 .. lim], mod x 3 == 0 || mod x 5 == 0]
