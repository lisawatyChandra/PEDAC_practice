# INPUT: Array
# OUTPUT: Array

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given an array of integers. You are tasked
# with doubling the numeric value of the odd-indexed
# integers in the input array.

# EXAMPLES / TEST CASES:
# double_odd_indices([1, 2, 3, 4]) == [ 1, 4, 3, 8]

# GOAL: 

# DATA STRUCTURE:
# Array -> Array

# ALGORITHM:
# - iterate over each integer in input array
# - retrieve current integer
# - if index of current integer is an odd number
# - then multiply current integer by 2
# - push current integer into a new array `doubled_odd_indexed`
# - return `doubled_odd_indexed`

# CODING WITH INTENT
def double_odd_indices(numbers)
    doubled_odd_indexed = []
    counter = 0

    loop do
        break if counter == numbers.size

        current_integer = numbers[counter]
        current_integer *= 2 if counter.odd?
        doubled_odd_indexed << current_integer

        counter += 1
    end

    doubled_odd_indexed
end

puts double_odd_indices([1, 2, 3, 4, 5]) == [1, 4, 3, 8, 5]