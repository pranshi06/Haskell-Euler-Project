module Problem02 where
import Data.List

fib = 1 : 2 : zipWith (+) fib (tail fib)
ans lim = sum (filter even(takeWhile (<=lim) fib))