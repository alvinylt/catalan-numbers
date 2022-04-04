module CatalanNumberFactorial where

-- | Factorial function
-- 
-- >>> factorial 0
-- 1
-- >>> factorial 3
-- 6
factorial :: Integer -> Integer
factorial num = case num of
  0 -> 1
  1 -> 1
  _
    | num < 0   -> error "factorial: input must be a non-negative integer"
    | otherwise -> num * factorial (num - 1)

-- | Catalan number by explicit sequence definition with factorial
-- 
-- >>> catalanNumberFactorial 0
-- 1
-- >>> catalanNumberFactorial 5
-- 42
catalanNumberFactorial :: Integer -> Integer
catalanNumberFactorial term = x `div` y
  where
    x = factorial (2 * term)
    y = factorial (term + 1) * factorial term

-- | Catalan number by explicit sequence definition with product
--
-- >>> catalanNumberProduct 0
-- 1
-- >>> catalanNumberProduct 5
-- 42
catalanNumberProduct :: Integer -> Integer
catalanNumberProduct term
  | term < 0  = error "catalanNumberProduct: input must be a non-negative integer"
  | term == 0 = 1
  | term == 1 = 1
  | otherwise = catalanNumberProductAcc term 2
  where
    catalanNumberProductAcc :: Integer -> Integer -> Integer
    catalanNumberProductAcc num acc = catalanNumberProductNum num acc `div` catalanNumberProductDem num acc

    catalanNumberProductNum :: Integer -> Integer -> Integer
    catalanNumberProductNum num acc
      | acc == num = (num + acc)
      | otherwise = (num + acc) * catalanNumberProductNum num (acc + 1)
    
    catalanNumberProductDem :: Integer -> Integer -> Integer
    catalanNumberProductDem num acc
      | acc == num = acc
      | otherwise = acc * catalanNumberProductDem num (acc + 1)