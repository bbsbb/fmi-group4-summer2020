----------------------------------
-------- Welcome - WEEK 2 --------
----------------------------------

-- What language are we learning again??

-- What do we know about it???

-- How was the lecture? Tell us!

-- So, what is the main unit when you are programming in a functional language?
-- What does statically typed?
-- What does strongly typed?

-- Cool, what is type inference?



-- How about 'lazy evaluation'?




-- So, all this talk of types. What types do we have?




-- Let's live code!



-- Exercise 1: Let's write a function that sums 3 integers.
-- sumThree 2 4 6 => 12


sumThree :: Integer -> Integer -> Integer -> Integer
sumThree a b c = a + b + c




-- Exercise 2: Last time we rote factorial. Somebody remind us how we did it, fast.


-- Exercise 2 cont: .....ok, let's do it in two more ways. What are guards? What is pattern matching?



factorialGuards :: Integer -> Integer
factorialGuards n
  |n < 2 = 1
  |otherwise = n * factorialGuards (n - 1)



factorialPm :: Integer -> Integer
factorialPm 1 = 1
factorialPm n = n * factorialPm (n - 1)





-- Exercise 3: Write a function that accepts an integer and returns the count of its digits. No ifs. Only guards.

--countDigits 90210 => 5
countDigits :: Integer -> Integer
countDigits n
  | n < 10 = 1
  | otherwise = 1 + countDigits (n `div` 10)



-- Exercise 4: Do we know what fibonacci is? Google it. Write it down.

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)




-- So, numbers are interesting, but what's more interesting is collections. Why?

-- How do lists behave in haskell?

-- What is []?
-- What is [1,2,3]?
-- What would 6:[1,2,3,4,5] do ?
-- What would [1,2,3] ++ [4,5,6] do?
-- How would we add an element at the end of a list?
-- Length of list, first/last, is the list empty? How do?



-- Exercise 4: Write a function that accepts a start an end element and returns a list of all inbetween(including the elements.)
-- allBetween 3 5 => [3,4,5]

allBetween :: Integer -> Integer -> [Integer]
allBetween n m
  | n == m = [n]
  | otherwise = [n] ++ allBetween (n+1) m


-- Exercise 5: Write a function that accepts a single inetger and returns a list of ALL elements larger than it. Wut?

allAfter :: Integer -> [Integer]
allAfter n = [n] ++ allAfter (n + 1)


-- So...how do we use it?


-- Exercise 6: ???? Something back to digits?
