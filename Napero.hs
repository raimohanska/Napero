module Napero where

import System.Process

say x = do
  readProcessWithExitCode "say" [x] []
  return ()
p = putStrLn
i = getLine
