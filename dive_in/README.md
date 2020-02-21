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



 

 

 