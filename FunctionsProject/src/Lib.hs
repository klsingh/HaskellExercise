module Lib
  ( someFunc,
  )
where

import System.Win32 (COORD (x))

someFunc :: IO ()
someFunc = putStrLn "someFunc"

double x = x + x

quadruple x = double (double x)

-- factorial n = [1 .. n]

factorial n = product [1 .. n]

average ns = div (sum ns) (length ns)
