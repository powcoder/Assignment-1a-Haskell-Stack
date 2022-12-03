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
module NoRecSpec (tests) where

import Test.Hspec
import qualified NoRec

tests :: Spec
tests = do
  describe "product" $ do
    it "produces 1 on empty list" $ do
      NoRec.product [] `shouldBe` product []
    it "calculates product of a list of numbers" $ do
      NoRec.product [4, 2, 3] `shouldBe` product [4, 2, 3]
      NoRec.product [62, 3, 3, 6] `shouldBe` product [62, 3, 3, 6]
      NoRec.product [1..10] `shouldBe` product [1..10]

  describe "factorial" $ do
    it "computes the base case" $ do
      NoRec.factorial 0 `shouldBe` 1
    it "computer larger factorials" $ do
      NoRec.factorial 3 `shouldBe` 6
      NoRec.factorial 4 `shouldBe` 24

  describe "length" $ do
    it "produces 0 on empty list" $ do
      NoRec.length [] `shouldBe` length []
    it "computes the length of non-empty lists correctly" $ do
      NoRec.length [1..10] `shouldBe` length [1..10]
      NoRec.length [1..100] `shouldBe` length [1..100]

  describe "replicate" $ do
    it "creates correct empty list" $ do
      NoRec.replicate 0 'a' `shouldBe` []

    it "creates correct finite list" $ do
      NoRec.replicate 3 'a' `shouldBe` replicate 3 'a'
      NoRec.replicate 5 'a' `shouldBe` replicate 5 'a'

  describe "concat" $ do
    it "does nothing for the empty list" $ do
      NoRec.concat ([] :: [[Int]]) `shouldBe` concat []
    it "correctly concats lists" $ do
      let lt = [[1, 2, 3], [4, 5], [], [6, 7]]
      NoRec.concat lt `shouldBe` concat lt
