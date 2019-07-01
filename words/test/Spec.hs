import Test.Hspec
import Lib

main :: IO ()
main = hspec $ do
  describe "How to write a test" $ do
    it "should be able to return test" $ do
      someString `shouldBe` "someString"
