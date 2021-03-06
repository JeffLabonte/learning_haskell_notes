# Haskell - Notes



Those are the notes I took while reading http://learnyouahaskell.com/.



## Useful built-in functions for arrays



`head`  takes a list and returns its head. The head of a list is basically its first element.

```haskell
head [5,4,3,2,1] -- returns 5
```



`tail` takes a list and returns its tail. In other words, it chops off a list's head.

```haskell
tail [5,4,3,2,1]  -- returns [4,3,2,1] 
```



`last` takes a list and returns its last element.

```haskell
 last [5,4,3,2,1] -- returns 1
```



`init` takes a list and returns everything except its last element.

```haskell
init [5,4,3,2,1] -- returns [5,4,3,2]
```



`length` takes a list and returns its length, obviously.

```haskell
 length [5,4,3,2,1]  -- returns 5
```



`null` checks if a list is empty. If it is, it returns **True**, otherwise it returns **False**. Use this function instead of **xs == []** (if you have a list called **xs**)

```haskell
null [1,2,3]  -- returns False
null [] -- returns True
```



`reverse` reverses a list.

```haskell
reverse [5,4,3,2,1]  -- returns [1,2,3,4,5]  
```



`take` takes number and a list. It extracts that many elements from the beginning of the list. Watch.

```haskell
take 3 [5,4,3,2,1] -- returns [5,4,3]
take 1 [3,9,3]     -- returns [3]
take 5 [1,2]  	   -- returns [1,2]
take 0 [6,6,6]     -- returns []
```



`drop` works in a similar way, only it drops the number of elements from the beginning of a list.

```haskell
drop 3 [8,4,2,1,5,6]  -- returns [1,5,6]
drop 0 [1,2,3,4]      -- returns [1,2,3,4]
drop 100 [1,2,3,4]    -- returns []
```



`maximum` takes a list of stuff that can be put in some kind of order and returns the biggest element.

`minimum` returns the smallest.

```haskell
 minimum [8,4,2,1,5,6]  -- returns 1
 maximum [1,9,2,3,4]    -- returns 9
```



`sum` takes a list of numbers and returns their sum.

`product` takes a list of numbers and returns the product.

```haskell
sum [5,2,1,6,3,2,5,7]     -- returns 31
product [6,2,1,2]         -- returns 24
product [1,2,5,6,7,9,2,0] -- returns 0
```



`elem` takes a thing and a list of things and tells us if that thing is an element of the list. It's usually called as an infix function because it's easier to read that way.

```haskell
 4 `elem` [3,4,5,6]   -- returns True
 10 `elem` [3,4,5,6]  -- returns False
```



Haskell has the texas range the same way python uses it: `[1..20]`

It can be done with letters as well:

```haskell
['a'..'z']  -- returns a to z lower case
['K'..'Z']  -- returns K to Z upper case
```

```haskell
[2,4..20]  -- returns [2,4,6,8,10,12,14,16,18,20]  
[3,6..20]  -- returns [3,6,9,12,15,18]
```

it is also possible with floating point numbers:

```haskell
[0.1, 0.3 .. 1]  -- returns [0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999]  
```

Paragraph from http://learnyouahaskell.com/starting-out :

    You can also use ranges to make infinite lists by just not specifying an upper limit. Later we'll go into more detail on infinite lists. For now, let's examine how you would get the first 24 multiples of 13. Sure, you could do [13,26..24*13]. But there's a better way: take 24 [13,26..]. Because Haskell is lazy, it won't try to evaluate the infinite list immediately because it would never finish. It'll wait to see what you want to get out of that infinite lists. And here it sees you just want the first 24 elements and it gladly obliges.


So basically, you create yourself a lazy generator. 

```haskell
let infiniteLoop = [13,26..]
take 24 infiteLoop   -- returns 24 first values
take 1000 infiteLoop -- returns 1000 first values
```

`cycle` takes a list and cycles it into an infinite list. If you just try to display the result, it will go on forever so you have to slice it off somewhere.

```haskell
take 10 (cycle [1,2,3])  -- returns [1,2,3,1,2,3,1,2,3,1]
take 12 (cycle "LOL ")   -- returns "LOL LOL LOL " 
```

`repeat` takes an element and produces an infinite list of just that element. It's like cycling a list with only one element.

```haskell
take 10 (repeat 5)  -- returns [5,5,5,5,5,5,5,5,5,5]  
```

This paragram comes from http://learnyouahaskell.com/starting-out as well:

    Although it's simpler to just use the `replicate` function if you want some number of the same element in a list. `replicate 3 10` returns `[10,10,10]`.
 
## List comprehension in haskell:

This mathematical expression can be expressed that way in haskell:
 ![](http://s3.amazonaws.com/lyah/setnotation.png)

 ```haskell
 [x*2 | x <- [1..10]]  -- returns [2,4,6,8,10,12,14,16,18,20]
 ``` 

 Let's say we want only the elements which, doubled, are greater than or equal to 12.

 ```haskell
 [x*2 | x <- [1..10], x*2 >= 12]  -- returns [12,14,16,18,20]  
 ```

 Cool, it works. How about if we wanted all numbers from 50 to 100 whose remainder when divided with the number 7 is 3? Easy.

```haskell
[ x | x <- [50..100], x `mod` 7 == 3]  -- returns [52,59,66,73,80,87,94] 
```

Predicates can be filtered out, this way:

```haskell
boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   
boomBangs [7..13] -- return ["BOOM!","BOOM!","BANG!","BANG!"]
```

You filter multiple values:

```haskell
[ x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- returns [10,11,12,14,16,17,18,20] 
```

It is possible to have multiple predicates in a list comprehension

```haskell
[ x*y | x <- [2,5,10], y <- [8,10,11]]  -- returns [16,20,22,40,50,55,80,100,110]
```

It is possible possible to filter our predicates:

```haskell
[ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]  -- returns [55,80,100,110] 
```

Haskell allows to do list comprehensions with string as well:

```haskell
let nouns = ["hobo","frog","pope"]  
let adjectives = ["lazy","grouchy","scheming"] 
[adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns] 
{-
returns:

["lazy hobo","lazy frog","lazy pope","grouchy hobo","grouchy frog",  
"grouchy pope","scheming hobo","scheming frog","scheming pope"]  
-}
```

Create our own version of lenght:

```haskell
length' xs = sum [1 | _ <- xs]   -- _ is used the same way as in python
```

This list comprehension will go thru all the elements of `xs` then return 1. Every 1's will be added to the last one from the function `sum`. The result will the length of your list!

Other uses to the list comprehension:

```haskell
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
```

as the name of the function suggest it, this function will remove all the element that aren't upper cased!

Examples:

```haskell
removeNonUppercase "Hahaha! Ahahaha!" -- reutrns HA
```