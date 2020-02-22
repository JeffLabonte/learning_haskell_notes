# Haskell - Notes



Those are the notes I took while reading http://learnyouahaskell.com/.



## Useful built-in functions



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







 