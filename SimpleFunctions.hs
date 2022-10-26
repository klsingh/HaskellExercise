module SimpleFunctions where

import System.Win32 (COORD (x))

-- Lambda Expressions
f :: Integer -> Integer
f x = 3 * x ^ 2 + 5

-- Example 2 for Simple Functions
square :: Int -> Int
square x = x * x

-- Example 3 for Simple Functions
mySum :: Int -> Int -> Int
mySum a b = a + b
