# Tasks

## Task 1
Define a function that returns the prime numbers in the range (a, b) that end with the digit 7.

## Task 2
Define a function that removes the element "a" from the list "lst". Solve the exercise with one line of code.

## Task 3
Define a function that forms a list from the last k elements of the list "lst".

Examples:

    formList 5 [1, 2, 3, 4, 5, 6] -> [6, 5, 4, 3, 2]
    formList 5 [1, 2, 3] -> [3, 2, 1]

## Task 4
Define a function that calculates the volume of a list of cylinders. Let the cylinder be expressed as the following: type Cylinder = (Double, Double), where the first coordinate is the radius and the second - its height.

Example:

    getVolumes [(5, 10), (5, 2), (2, 10), (2, 5)] -> [785.4, 157.08, 125.66, 62.83]

## Task 5
Define a function that checks whether a list is sorted (in ascending or descending order).

Examples:

    isSorted [1, 2, 3, 3, 3, 4, 5, 6, 6] -> True
    isSorted [1, -1, -3, -3, -3, -4, -5, -6, -6] -> True
    isSorted [1, 2, 3, 3, 3, 4, 5, 6, 5] -> False

## Task 6
Define a function that finds the minimum element in a list and appends it to the front of a list.

Example:

    minToFront [2, 5, 8, 0, 6, 3] -> [0, 2, 5, 8, 6, 3]
    minToFront [2, 5, 8, 0, 6, 0] -> [0, 2, 5, 8, 6]

## Task 7
Define a function that concatenates two lists.

Examples:

    concatenate [1, 2, 3] [5, 8, 9] -> [1, 2, 3, 5, 8, 9]
    concatenate [1] [5, 8, 9] -> [1, 5, 8, 9]
    concatenate [1, 2, 3] [5] -> [1, 2, 3, 5]

## Task 8
Define a function that concatenates the elements of a list.

Example:

    join [[1, 2], [5, 6], [9]] -> [1, 2, 5, 6, 9, 10]

## Task 9
Define a function that returns a list of booleans that state whether the first element of the tuple is the square root of the second (without calculating the square root!).

Example:

    checkRoot [(5, 25), (6, 36), (7, 47), (8, 88)] -> [True, True, False, False]
