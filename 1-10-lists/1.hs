{-
(*) Find the last element of a list.

Example in Haskell:
λ> myLast [1,2,3,4]
4
λ> myLast ['x','y','z']
'z'
-}

myLast :: [a] -> a
myLast [x] = x
myLast (x:xs) = myLast xs
-- non-exhaustive for []

main :: IO ()
main = putStrLn [myLast "Abc"]
