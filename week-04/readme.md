# Tasks

## Task 1
Write a function that removes the digit d from the number n.

Examples:

    removeD 1 656 -> 656
    removeD 5 656 -> 66
    removeD 6 656 -> 5
    removeD 0 606 -> 66
    removeD 0 600 -> 6

## Task 2
Given a divisor d and a bound b, find the largest integer N, such that:

    N is divisible by divisor
    N is less than or equal to bound
    N is greater than 0.

Examples:

    maxMultiple 2 7 -> 6
    maxMultiple 3 10 -> 9
    maxMultiple 7 17 -> 14
    maxMultiple 10 50 -> 50
    maxMultiple 37 200 -> 185
    maxMultiple 7 100 -> 98

## Task 3
Write a function that finds the maximum digit in a number by searching from right to left.

## Task 4
Write a function that sorts a number in descending order by returning the sorted number as a list.

Examples:

    sortN 1714 -> [7, 4, 1, 1]
    sortN 123450 -> [5, 4, 3, 2, 1, 0]
    sortN 123405 -> [5, 4, 3, 2, 1, 0]
    sortN 123045 -> [5, 4, 3, 2, 1, 0]
    sortN 120345 -> [5, 4, 3, 2, 1, 0]
    sortN 102345 -> [5, 4, 3, 2, 1, 0]
    sortN 8910 -> [9, 8, 1, 0]

## Task 5
Write a function that finds the sum of the elements in a list.

    mySum [0, 1, 2] -> 3

## Task 6
Write a function that checks whether an element is present in a list.

    isPresent 0 [0, -1, 2] -> True

## Task 7
Write a function that removes every element equal to x in a list.

    removeAll 5 [5] -> []
    removeAll 4 [4, 4] -> []
    removeAll 5 [1] -> [1]
    removeAll 5 [5, 1, 5, 3, 5] -> [1, 3]
    removeAll 3 [5, 1, 5, 3, 5] -> [5, 1, 5, 5]

## Task 8
Define the Rat data type that is the tuple (x, y) where x is the nominator and y - the denominator of a rational number. Define a function called normalize which will simplify the nominator and denominator (so that their highest common denominator is 1).

Examples:

    normalize (4, 2) -> (2, 1)
    normalize (8, 4) -> (2, 1)
    normalize (2, 4) -> (1, 2)

## Task 9
By using the solution to task 8, additionally define the following functions for the Rat data type:

    sumRats - returns the sum of two rational numbers
    multiplyRats - returns the product of two rational numbers
    divideRats - returns the quotient of two rational numbers
    areEqual - returns whether two rational numbers are equal


Examples:

    sumRats (2, 5) (5, 2) -> (29, 10)
    sumRats (52, 123) (96, 14) -> (6268, 861)
    sumRats (2, 5) (3, 5) -> (1, 1)

    multiplyRats (2, 5) (5, 2) -> (1, 1)
    multiplyRats (52, 123) (96, 14) -> (832, 287)
    multiplyRats (2, 5) (3, 5) -> (6, 25)

    divideRats (2, 5) (5, 2) -> (4, 25)
    divideRats (52, 123) (96, 14) -> (91, 1476)
    divideRats (2, 5) (3, 5) -> (2, 3)
    
    areEqual (2, 5) (5, 2) -> False
    areEqual (52, 123) (52 * 3, 123 * 3) -> True
    areEqual (2, 6) (5, 15) -> False
