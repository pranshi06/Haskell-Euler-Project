module Main where

import System.Exit (exitFailure)
import Test.HUnit

import qualified Problem01

test1 = TestCase (assertEqual "t1" 1 2)
tests = TestList [test1]

main :: IO()
main = do
    -- let testVar = Problem01.ans 10
    -- if testVar == 33
    --     then putStrLn "Test Passed!"
    -- else do
    --     putStrLn "Failed!!"
    --     exitFailure

    -- exitFailure

    count <- runTestTT tests
    if failures count > 0
        then
            exitFailure
        else
            putStrLn "This test passed, Huzzah!"
