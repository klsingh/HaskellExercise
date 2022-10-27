-- Creating a Read-Eval-Print-Loop (REPL)
-- Read the given input, and parse it into a data structure that can be evaluated.
-- Evaluate the parsed expression, based on a set of rules.
-- Print the result of the evaluated expression.
-- Loop (repeat) until signaled to stop.
import Control.Monad (unless)
import System.IO

main :: IO ()
main = do
  input <- read'

  unless (input == ":quit") $
    print' (eval' input)
      >> main

read' :: IO String
read' =
  putStr "REPL> "
    >> hFlush stdout
    >> getLine

eval' :: String -> String
eval' input =
  input

print' :: String -> IO ()
print' = putStrLn