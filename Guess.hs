module Guess where

import Napero

main = do
  p "hello! guess what number I'm thinking, between 1 and 3"
  number <- rnd 3
  guess number

guess number = do
  answerText <- i
  let answerNum = int answerText
  if answerNum == number
    then p "Correct!"
    else do
      p "Guess again!"
      guess number
