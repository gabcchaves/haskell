main :: IO()
main = do
    let l = [1..10]
    print (head (tail (reverse l)))
