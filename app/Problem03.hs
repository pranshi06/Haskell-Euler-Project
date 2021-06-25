module Problem03 where
import Data.Numbers.Primes

largestPrimeFactor :: Integral t => t -> t
largestPrimeFactor n = if sp == n then sp
                       else largestPrimeFactor (div n sp)
                    where sp = head [x | x <- [2..n], mod n x == 0]

ans x = largestPrimeFactor (x :: Integer)


ansPrime :: Integral a => a -> a
ansPrime x = last (primeFactors x)

-- argPrime :: Integral a => a -> a
-- argPrime x = last (primeFactors x)