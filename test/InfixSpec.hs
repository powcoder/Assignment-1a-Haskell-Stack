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
module InfixSpec (tests) where

import Test.Hspec
import qualified Infix
import Data.List (sort)

tests :: Spec
tests = do
  describe "foldl" $ do
    it "folds the empty list correctly" $ do
      Infix.foldl (+) 5 [] `shouldBe` foldl (+) 5 []
    it "accumulates left-ways" $ do
      Infix.foldl div 18 [3, 2, 1] `shouldBe` foldl div 18 [3, 2, 1]
      Infix.foldl (+) 0 [3, 2, 1] `shouldBe` foldl (+) 0 [3, 2, 1]

  let desort = reverse . sort
  describe "desort" $ do
    it "sorts the empty list" $ do
      Infix.desort ([] :: [Int]) `shouldBe` []
    it "sorts non-empty lists" $ do
      Infix.desort [4, 6, 2, 7, 3] `shouldBe` desort [4, 6, 2, 7, 3]
      Infix.desort [1, 2, 1, 1] `shouldBe` desort [1, 2, 1, 1]

  describe "desort'" $ do
    it "sorts the empty list" $ do
      Infix.desort' ([] :: [Int]) `shouldBe` []
    it "sorts non-empty lists" $ do
      Infix.desort' [4, 6, 2, 7, 3] `shouldBe` desort [4, 6, 2, 7, 3]
      Infix.desort' [1, 2, 1, 1] `shouldBe` desort [1, 2, 1, 1]

  describe "enumeratedPos" $ do
    it "enumerates and filters correctly" $ do
      let ep = filter ((>(0::Int)) . snd) . zip [0..]
      Infix.enumeratedPos [-2, 3, 1, -5, 23] `shouldBe` ep [-2, 3, 1, -5, 23]
      Infix.enumeratedPos [-6, 3, 1, 9, -4] `shouldBe` ep [-6, 3, 1, 9, -4]
