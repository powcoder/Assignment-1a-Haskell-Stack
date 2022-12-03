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
module TreeSpec (tests) where

import Test.Hspec
import qualified Tree
import Tree (Tree (..))

tests :: Spec
tests = do
  let insert e Leaf           = Node Leaf e Leaf
      insert e n@(Node l x r) = case compare e x of
        EQ -> n
        LT -> insert e l
        GT -> insert e r

  let fromList :: Ord a => [a] -> Tree a
      fromList = foldr insert Leaf

  let t0 = fromList [2, 0, 9]
  let t1List = [2, 0, 9, 3, 6, -3, -6]
  let t1 = fromList t1List

  describe "insert" $ do
    it "inserts into the empty tree" $ do
      Tree.insert True Leaf `shouldBe` insert True Leaf
    it "inserts in the correct branch" $ do
      Tree.insert 5 t0 `shouldBe` insert 5 t0

      Tree.insert 8 t1 `shouldBe` insert 8 t1
      Tree.insert (-2) t1 `shouldBe` insert (-2) t1

    it "ignores duplicates" $ do
      let t2 = fromList [True, False]
      Tree.insert True t2 `shouldBe` t2
      Tree.insert False t2 `shouldBe` t2

      Tree.insert 2    t1 `shouldBe` t1
      Tree.insert 0    t1 `shouldBe` t1
      Tree.insert 9    t1 `shouldBe` t1
      Tree.insert 3    t1 `shouldBe` t1
      Tree.insert 6    t1 `shouldBe` t1
      Tree.insert (-3) t1 `shouldBe` t1
      Tree.insert (-6) t1 `shouldBe` t1

  describe "contains" $ do
    it "doesn't find elements in the empty tree" $ do
      Tree.contains 4 Leaf `shouldBe` False
    it "finds elements that are in a tree" $ do
      Tree.contains 2 t1 `shouldBe` True
      Tree.contains 0 t1 `shouldBe` True
      Tree.contains 9 t1 `shouldBe` True
      Tree.contains 3 t1 `shouldBe` True
      Tree.contains 6 t1 `shouldBe` True
      Tree.contains (-3) t1 `shouldBe` True
      Tree.contains (-6) t1 `shouldBe` True
    it "doesn't find elements not in the tree" $ do
      Tree.contains 1 t1 `shouldBe` False
      Tree.contains 4 t1 `shouldBe` False
      Tree.contains 5 t1 `shouldBe` False

  describe "map" $ do
    it "correctly maps the empty tree" $ do
      Tree.map not Leaf `shouldBe` Leaf
    it "correctly maps non-empty trees" $ do
      let map' :: (a -> b) -> Tree a -> Tree b
          map' _ Leaf = Leaf
          map' f (Node l x r) = Node (map' f l) (f x) (map' f r)

      Tree.map (+2) t0 `shouldBe` map' (+2) t0
      Tree.map (+2) t1 `shouldBe` map' (+2) t1
      Tree.map (div 20) t1 `shouldBe` map' (div 20) t1

  describe "foldl" $ do
    it "correctly folds the empty tree" $ do
      Tree.foldl (+) 0 Leaf `shouldBe` 0
    it "correctly folds non-empty trees" $ do
      Tree.foldl (+) 0 t1 `shouldBe` foldl (+) 0 t1List

  describe "foldr" $ do
    it "correctly folds the empty tree" $ do
      Tree.foldr (+) 0 Leaf `shouldBe` 0
    it "correctly folds non-empty trees" $ do
      Tree.foldr (+) 0 t1 `shouldBe` foldr (+) 0 t1List
