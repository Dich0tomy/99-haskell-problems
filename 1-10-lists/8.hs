{-
(**) Eliminate consecutive duplicates of list elements.

If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Example:

* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)
Example in Haskell:

λ> compress "aaaabccaadeeee"
"abcade"
-}

compress :: Eq a => [a] -> [a]
compress (x:xs@(y:_))
 | x == y = compress xs
 | otherwise = x : compress xs
compress xs = xs

main :: IO ()
main = print $ compress "aaabbbcccc"
