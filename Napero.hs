module Napero where

import System.Process
import Control.Concurrent
import System.Random

say x = do
  readProcessWithExitCode "say" [x] []
  return ()
p = putStrLn
i = getLine
w delay = threadDelay $ delay * 1000000
s xs = sequence xs
m a = mapM_ a
rnd n = randomIO >>= return . (+1) . (`mod` n)
