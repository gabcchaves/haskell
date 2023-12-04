main :: IO()
main = do
    print (myLength [1..10])

myLength :: [Int] -> Int
myLength l = length l
