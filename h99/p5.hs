main :: IO()
main = do
    let rev = myRev [1..10]
    print rev

myRev :: [Int] -> [Int]
myRev l = reverse l
