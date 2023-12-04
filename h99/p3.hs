main :: IO()
main = do
    print (elAt [1..10] 3)

elAt :: [Int] -> Int -> Int
elAt l k = l !! k
