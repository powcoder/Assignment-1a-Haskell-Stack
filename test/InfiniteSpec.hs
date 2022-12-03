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
module InfiniteSpec (tests) where

import Test.Hspec
import qualified Infinite

tests :: Spec
tests = do
  describe "collatz" $ do
    it "correctly calculates sequences" $ do
      let collatz n = let nxt | even n    = n `div` 2
                              | otherwise = n * 3 + 1
                      in n : collatz nxt
      take 20 (Infinite.collatz 24) `shouldBe` take 20 (collatz 24)
      take 30 (Infinite.collatz 99) `shouldBe` take 30 (collatz 99)
      take 40 (Infinite.collatz 1691) `shouldBe` take 40 (collatz 1691)

  describe "fizzBuzz" $ do
    it "plays FizzBuzz" $ do
      let fizzBuzz' n | mul3 && mul5 = "FizzBuzz"
                      | mul3         = "Fizz"
                      | mul5         = "Buzz"
                      | otherwise    = show n
                        where
                          mul3 = n `mod` 3 == 0
                          mul5 = n `mod` 5 == 0
      let fizzBuzz = map fizzBuzz' [1..]
      take 45 Infinite.fizzBuzz `shouldBe` take 45 fizzBuzz
      take 249 Infinite.fizzBuzz `shouldBe` take 249 fizzBuzz

  describe "fib" $ do
    it "computes the fibonacci sequence" $ do
      let fib = 0 : zipWith (+) fib (1:fib)
      take 45 Infinite.fib `shouldBe` take 45 fib
      take 249 Infinite.fib `shouldBe` take 249 fib
