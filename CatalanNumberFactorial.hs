module CatalanNumberFactorial where

factorial :: Integer -> Integer
factorial num = case num of
  0 -> 1
  1 -> 1
  _ -> num * factorial (num - 1)

catalanNumberFactorial :: Integer -> Integer
catalanNumberFactorial term = x `div` y
  where
    x = factorial (2 * term)
    y = factorial (term + 1) * factorial term