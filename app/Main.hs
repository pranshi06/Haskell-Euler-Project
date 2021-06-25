module Main where

import System.Environment (getArgs)

import qualified Problem01
import qualified Problem02
import qualified Problem03
import qualified Problem04
import qualified Problem05

problemMap :: String -> IO()
problemMap "1" = print (Problem01.ans 999)
problemMap "2" = print (Problem02.ans 4000000)
problemMap "3" = print (Problem03.ansPrime 600851475143)
problemMap "4" = print (Problem04.ans)
problemMap "5" = print (Problem05.ans 20)

main :: IO ()
main = do 
    arg <- getLine 
    problemMap arg
