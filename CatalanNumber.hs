module CatalanNumber where

-- Naive definition
catalanNumber :: Integer -> Integer
catalanNumber term
  | term < 0  = error "catalanNumber: input must be a non-negative integer"
  | term == 0 = 1
  | otherwise = catalanNumberAcc (term - 1) 0
  where
    catalanNumberAcc :: Integer -> Integer -> Integer
    catalanNumberAcc num acc
      | num == 0  = catalanNumber acc
      | otherwise = catalanNumber num * catalanNumber acc + catalanNumberAcc (num - 1) (acc + 1)