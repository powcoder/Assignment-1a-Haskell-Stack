https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
module Infix
  ( desort
  , desort'
  , enumeratedPos
  , foldl
  ) where

import Prelude hiding (foldl)
import Data.List (sort)

-- You can write functions as infix operation by placing it
-- between two tick characters `
-- e.g. 
-- multipleOf2 :: Int -> Bool
-- multipleOf2 x = x `mod` 2 == 0
--
-- implement foldl using infix notation on the first argument:
foldl :: (b -> a -> b) -> b -> [a] -> b 
foldl = undefined

--------------------------------------------------------------
-- Often times, we apply multiple translations to a data structure
-- after each other. For example,
-- ex0 xs = sum (map (+2) xs)
--
-- Stacking more and more of these though will quickly become
-- unwieldy...
-- ex1 xs = filter (\(_, x) -> x < 13) (zip [1..] (map (+2) xs))
--
-- Yuck! Too many parentheses to make any sense of this...
--
-- Luckily, we have some operators that will make this a lot clearer
--
-- The $ operator:
-- ($) :: (a -> b) -> a -> b
-- f $ x = f x
--
-- Wait a minute... This is literally an application? Why use this?
-- 
-- The difference is in the order of application:
-- f x y z == ((f x) y) z
-- but
-- f x $ g y == (f x) (g y)
--
-- Sweet. Let's apply it to the examples
--
-- ex0 xs = sum $ map (+2) xs
-- ex1 xs = filter (\(_, x) -> x < 13) 
--        $ zip [1..] 
--        $ map (+2) xs
--
-- Already better!
--------------------------------------------------------------

-- sorts the passed list in descending order.
-- NO PARENTHESES ALLOWED
--
-- e.g. desort [2, 5, 3, 1] = [5, 3, 2, 1]
--
-- Hint: Use `sort` and `reverse` to implement this
desort :: Ord a => [a] -> [a]
desort = undefined

--------------------------------------------------------------
-- The . operator
-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- f . g = \x -> f (g x)
--
-- Here, we just chain f :: b -> c and g :: a -> b such that 
-- we return a function of type a -> c
--
-- A common ideom we see in Haskell using (.)
--
-- plus2 = inc . inc
--
-- ex0 = sum . map (+2)
--
-- ex1 = filter ((<13) . snd)
--     . zip [0..]
--     . map (+2)
--
-- Much better!
--------------------------------------------------------------

-- Reimplement desort under the following extra constraint
--
-- You may not bind variables for this definition, e.g.
-- desort' xs = ... 
-- is NOT allowed!
desort' :: Ord a => [a] -> [a]
desort' = undefined

-- Returns all positive numbers in the list together with
-- their index within the original list.
--
-- e.g. enumeratedPos [-1, -5, 3, -2, 5] = [(2, 3), (4, 5)]
--
-- You may not bind variables to this definition:
-- enumerated xs = ... 
-- is NOT allowed!
--
-- Hint: Use `filter` and `zip` to implement this
--
-- You can try it without an anonymous function on the filter :)
enumeratedPos :: (Num a, Ord a) => [a] -> [(Int, a)]
enumeratedPos = undefined

