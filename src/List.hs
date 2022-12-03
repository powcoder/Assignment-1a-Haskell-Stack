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
module List
  ( head
  , length
  , replicate
  , take
  , foldl
  , foldr
  , filter
  , map
  , reverse
  , get
  , (++)
  ) where

import Prelude (Int, undefined, Bool, Maybe (..), (+), (-))

head :: [a] -> Maybe a
head = undefined

-- return the length of a list
-- e.g. length [a, b, c] = 3
length :: [a] -> Int
length = undefined

-- replicate the element n number of times in a list
-- e.g. replicate 4 'a' = ['a', 'a', 'a', 'a']
replicate :: Int -> a -> [a]
replicate = undefined

-- take n xs, should return the prefix of xs of length n.
-- If length xs <= n, return xs
-- e.g. take 2 [a, b, c, d] = [a, b]
--      take 2 [a]          = [a]
take :: Int -> [a] -> [a]
take = undefined

-- fold a list left-ways
-- e.g. foldl (+) 0 [a, b, c, d] = (((0 + a) + b) + c) + d
foldl :: (b -> a -> b) -> b -> [a] -> b 
foldl = undefined

-- fold a list right-ways
-- e.g. foldr (+) 0 [a, b, c, d] = a + (b + (c + (d + 0)))
foldr :: (a -> b -> b) -> b -> [a] -> b 
foldr = undefined

-- return a list containing only the elements that satisfy the predicate
-- e.g. filter odd [1, 2, 3, 4] = [1, 3]
filter :: (a -> Bool) -> [a] -> [a]
filter = undefined

-- apply the passed function to all elements of the list
-- e.g. map (+3) [0, 5, -3] = [3, 8, 0]
map :: (a -> b) -> [a] -> [b]
map = undefined

-- reverse the passed list
-- e.g. reverse [a, b, c] = [c, b, a]
reverse :: [a] -> [a]
reverse = undefined

-- get the element at the given index
-- e.g. get 1  [a, b, c, d] = Just b
--      get 10 [a, b, c, d] = Nothing
get :: Int -> [a] -> Maybe a
get = undefined

-- append two lists to each other
-- e.g. [3, 4] ++ [1, 5] = [3, 4, 1, 5]
--
-- Hint: You may use both prefix and infix form 
--       pattern matching:
-- (++) _ _ = ...
-- _ ++ _ =  ...
(++) :: [a] -> [a] -> [a]
(++) = undefined


