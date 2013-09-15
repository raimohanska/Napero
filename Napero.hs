module Napero where

import System.Process
import Control.Concurrent

say x = do
  readProcessWithExitCode "say" [x] []
  return ()
p = putStrLn
i = getLine
w delay = threadDelay $ delay * 1000000
s xs = sequence xs
m a = mapM_ a
