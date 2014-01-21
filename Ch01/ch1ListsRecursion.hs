module Ch1ListsRecur where 
-- import Data.Char
-- import Test.QuickCheck 
{- Church of Recursion
Recursion gets you everything you would want just as well as a Turing Machine 

a recursive definition of a list
    null, is in [] 
    or 
    constructed as in x:xs 
        with head x an element and tail xs as a list 

Cons as in Construct And Append 

(:) :: a -> [a] -> [a]
(++) :: [a] -> [a] -> [a]

*Ch1ListsRecur> 1:[2,3]
[1,2,3]

*Ch1ListsRecur> [1]++[2,3]
[1,2,3]

*Ch1ListsRecur> [4]++[2,3]++[1]
[4,2,3,1]

*Ch1ListsRecur> 'r':"ecursion"
"recursion"

*Ch1ListsRecur> "re"++ "cursion"
"recursion"

*Ch1ListsRecur> 1:2:3:4:[]
[1,2,3,4]


*Ch1ListsRecur> [4]:[2,3]:[1] -- error
<interactive>:14:2:
    No instance for (Num t0) arising from the literal `4'

    
*Ch1ListsRecur> "h":"e":"l":"l":"o":[]
["h","e","l","l","o"]
*Ch1ListsRecur> 'h':'e':'l':'l':'o':[]
"hello"

*Ch1ListsRecur> null []
True
*Ch1ListsRecur> null [1,2]
False

*Ch1ListsRecur> tail [1,2]
[2]
*Ch1ListsRecur> tail [1]
[]
*Ch1ListsRecur> head [1,2,3]
1
*Ch1ListsRecur> head []
*** Exception: Prelude.head: empty list
    
*Ch1ListsRecur> head "re":"ecursion"
"recursion"

*Ch1ListsRecur> tail "re"++ "cursion"
"ecursion"

*Ch1ListsRecur> head "re"++ "cursion"

<interactive>:29:6:
    Couldn't match type `Char' with `[Char]'
    Expected type: [[Char]]
      Actual type: [Char]
    In the first argument of `head', namely `"re"'
    In the first argument of `(++)', namely `head "re"'
    In the expression: head "re" ++ "cursion"

-}
-- as a list comprehension 
squares :: [Integer] -> [Integer] 
squares xs = [x * x | x <- xs]

-- as Recursion 
squaresRec :: [Integer] -> [Integer] 
squaresRec []       = [] 
squaresRec (x:xs)   = x*x : squaresRec xs 

-- *Ch1ListsRecur> squaresRec [1,2,3]
-- [1,4,9]


