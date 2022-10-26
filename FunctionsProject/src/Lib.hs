module Lib
  ( someFunc,
  )
where

import System.Win32 (COORD (x, y))

someFunc :: IO ()
someFunc = putStrLn "someFunc"

double x = x + x

quadruple x = double (double x)

-- factorial n = [1 .. n]

factorial n = product [1 .. n]

average ns = div (sum ns) (length ns)

-- Local Variables -->let expression
poly x =
  let y = x + 1
   in y * y

-- Use of Where
sumEvenOdds xs = sums (incr (evens xs))
  where
    sums xs = foldr (+) 0 xs
    incr xs = map (+ 1) xs
    evens xs = filter (\x -> even x) xs