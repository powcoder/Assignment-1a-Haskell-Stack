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
module ListSpec (tests) where

import Test.Hspec
import qualified List

tests :: Spec
tests = do
  describe "head" $ do
    it "returns Nothing on empty list" $ do
      List.head ([] :: [Int]) `shouldBe` Nothing

    it "returns the head for non-empty lists" $ do
      List.head [5, 1, 2, 3] `shouldBe` Just 5
      List.head [2] `shouldBe` Just 2
      List.head [1..] `shouldBe` Just 1
  
  describe "length" $ do
    it "computes correct empty list length" $ do
      List.length [] `shouldBe` length []

    it "computes correct length for finite lists" $ do
      List.length [1, 2, 3, 4, 5] `shouldBe` length [1, 2, 3, 4, 5]
      List.length [1, 2, 3, 4] `shouldBe` length [1, 2, 3, 4]

  describe "replicate" $ do
    it "creates correct empty list" $ do
      List.replicate 0 'a' `shouldBe` []

    it "creates correct finite list" $ do
      List.replicate 3 'a' `shouldBe` replicate 3 'a'
      List.replicate 5 'a' `shouldBe` replicate 5 'a'

  describe "take" $ do
    it "takes correct prefix" $ do
      List.take 2 [1, 2, 3] `shouldBe` take 2 [1, 2, 3]
      List.take 4 [1, 2, 3, 4] `shouldBe` take 4 [1, 2, 3, 4]

    it "returns the whole list if length was too short" $ do
      List.take 20 [1, 2] `shouldBe` take 20 [1, 2]

  describe "foldl" $ do
    it "folds the empty list correctly" $ do
      List.foldl (+) 5 [] `shouldBe` foldl (+) 5 []
    it "accumulates left-ways" $ do
      List.foldl div 18 [3, 2, 1] `shouldBe` foldl div 18 [3, 2, 1]
      List.foldl (+) 0 [3, 2, 1] `shouldBe` foldl (+) 0 [3, 2, 1]

  describe "foldr" $ do
    it "folds the empty list correctly" $ do
      List.foldr (+) 5 [] `shouldBe` foldr (+) 5 []
    it "accumulates right-ways" $ do
      List.foldr div 18 [3, 2, 1] `shouldBe` foldr div 18 [3, 2, 1]
      List.foldr (+) 0 [3, 2, 1] `shouldBe` foldr (+) 0 [3, 2, 1]

  describe "filter" $ do
    it "filters the empty list" $ do
      List.filter (>3) [] `shouldBe` filter (>3) []
    it "filters non-empty lists" $ do
      List.filter (>3) [8, 3, 2, 5] `shouldBe` filter (>3) [8, 3, 2, 5]
      List.filter (>3) [1, 3, 2, -2] `shouldBe` filter (>3) [1, 3, 2, -2]
      List.filter (==True) [True, False] `shouldBe` filter (==True) [True, False]

  describe "map" $ do
    it "maps the empty list" $ do
      List.map not [] `shouldBe` map not []
    it "correctly maps non-empty lists" $ do
      List.map not [True, False, False] `shouldBe` map not [True, False, False]
      List.map (+1) [4, 5, 1, 3] `shouldBe` map (+1) [4, 5, 1, 3]

  describe "reverse" $ do
    it "reverses the empty list" $ do
      List.reverse ([] :: [Int]) `shouldBe` reverse []
    it "reverses non-empty lists" $ do
      List.reverse [True, False, False] `shouldBe` reverse [True, False, False]
      List.reverse [0, 3, 1, 5] `shouldBe` reverse [0, 3, 1, 5]

  describe "get" $ do
    it "returns Nothing on out of bounds" $ do
      List.get 10 [2 :: Int, 3] `shouldBe` Nothing
      List.get 2  [2 :: Int, 3] `shouldBe` Nothing
    it "returns Just when in bounds" $ do
      List.get 2 [4 :: Int, 2, 1, 5]    `shouldBe` Just 1
      List.get 4 [0 :: Int, 2, 1, 3, 5] `shouldBe` Just 5

  describe "(++)" $ do
    it "appends two empty lists" $ do
      ([] :: [Int]) List.++ [] `shouldBe` []
    it "appends correctly if either list is empty" $ do
      [] List.++ [1, 2, 3] `shouldBe` [1, 2, 3]
      [1, 2, 3] List.++ [] `shouldBe` [1, 2, 3]
    it "appends correctly on two non-empty lists" $ do
      [1, 2, 3, 4] List.++ [5, 6] `shouldBe` [1, 2, 3, 4, 5, 6]
      [1] List.++ [2] `shouldBe` [1, 2]
