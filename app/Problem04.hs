module Problem04 where

import Data.List

reverseInt = read . reverse . show

isPalindrome n = n == reverseInt n

-- ans = head [a*b | a <- [999,998..100], b <- [999,998..100], isPalindrome (a * b)]
ans = foldl1 max [a*b | a <- [100..999], b <- [100..999], isPalindrome (a * b)]