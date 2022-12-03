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

import Test.Hspec
import Test.Hspec.Runner
import Text.Printf

import Control.Monad (when)

import qualified ListSpec
import qualified TreeSpec
import qualified NoRecSpec
import qualified InfixSpec
import qualified InfiniteSpec

red, green, bold, normal :: String
red    = "\ESC[1;31m"
green  = "\ESC[1;32m"
bold   = "\ESC[0;1m"
normal = "\ESC[0m"


tests :: Spec
tests = do
  describe "List"     ListSpec.tests
  describe "Tree"     TreeSpec.tests
  describe "NoRec"    NoRecSpec.tests
  describe "Infix"    InfixSpec.tests
  describe "Infinite" InfiniteSpec.tests

main :: IO ()
main = do 
  summary <- hspecResult tests
  let total       = fromIntegral $ summaryExamples summary
  let failures    = fromIntegral $ summaryFailures summary
  let grade       = 1 + 9 * (1 - (failures / total)) :: Float
  -- Hardcoded number of tests...
  let numTests = 50.0
  when (total >= numTests) $ do
    putStr $ bold
    putStr $ "Your current grade is ["
    putStr $ if grade < 5.5 then red else green
    putStr $ printf "%.1f" grade
    putStr $ bold
    putStr $ "/10.0]\n\n"
    putStr $ normal
    putStr $ "As fraction for codegrade: " ++ show (grade / 10.0) ++ "\n"

