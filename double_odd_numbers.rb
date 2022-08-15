# INPUT: Array
# OUTPUT: Array

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given an array of integers. You are 
# tasked with transforming only the odd integers in the
# input array. The transformation to be performed is to
# multiply each odd integer by 2. Then return a new array
# that is almost identical to the input array, the only
# difference being every odd integer in the new array is 
# double its counterpart in the input array.

# EXAMPLES / TEST CASES:
# double_odd_numbers([1, 2, 3, 4, 5]) == [2, 2, 6, 4,10]
# double_odd_numbers([]) = []

# GOAL:

# DATA STRUCTURE
# Array -> Array

# ALGORITHM
# - iterate over each integer in the input array
# - retrieve current integer
# - check if integer is an odd number
# - if it is, multiply by 2
# - push current integer into a new array `doubled_numbers`
# - return `doubled_numbers`

# CODING WITH INTENT
def double_odd_numbers(numbers)
    doubled_numbers = []
    counter = 0

    loop do
        break if counter == numbers.size

        current_number = numbers[counter]
        current_number *= 2 if current_number.odd?
        doubled_numbers << current_number

        counter += 1
    end

    doubled_numbers
end

puts double_odd_numbers([1, 2, 3]) == [2, 2, 6]
puts double_odd_numbers([]) == []
# puts double_odd_numbers() == []
# line 43 throws `ArgumentError` exception
# wrong number of arguments (given 0, expected 1)