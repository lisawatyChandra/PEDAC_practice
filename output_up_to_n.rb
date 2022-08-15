# INPUT: Array
# OUTPUT: side effect of printing to the screen

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Given an array of integers, for each integer
# output all integers from `1` to that integer; e.g., 
# if the integer is `5`, then the method outputs
# `1`, `2`, `3`, `4`, `5`.
# and, return a new array of arrays, where each subarray
# contains all integers from `1` to the integer for 
# that iteration

# EXAMPLES / TEST CASES
# - upto([3, 5, 7]) == [[1, 2, 3], [1, 2, 3, 4, 5], [1, 2, 3, 4, 5, 6, 7]]

# GOAL:

# DATA STRUCTURE
# Array -> Array of arrays

# ALGORITHM
# - Iterate over input array
# - With each iteration of outer loop, iterate over 
#   a range of integers, starting from 1 up to 
#   current integer, inclusive. 
# - With each iteration of inner loop, outputs 
#   the current integer in the range.

# CODING WITH INTENT
def upto(numbers)
    numbers.map do |number|
        puts ''
        (1..number).map do |n|
            puts n
            n
        end
    end
end

p arr = upto([3, 4, 5])
# => [[1, 2, 3], [1, 2, 3, 4], [1, 2, 3, 4, 5]]