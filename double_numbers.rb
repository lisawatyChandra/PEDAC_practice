# INPUT: Array
# OUTPUT: Array

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given an array of integers. You are
# tasked with transforming each integer in input array
# into twice its original numeric value.

# EXAMPLES / TEST CASES:
# double_numbers([1, 2, 3]) == [2, 4, 6]
# double_numbers([]) == []

# GOAL:

# DATA STRUCTURE:
# Array -> Array

# ALGORITHM:
# - Iterate over each integer in input array
# - retrieve current integer
# - multiply current integer by 2
# - push current integer into a new array `doubled_numbers`
# - return `doubled_numbers`

# CODING WITH INTENT
def double_numbers(numbers)
    doubled_numbers = []
    counter = 0

    loop do
        break if counter == numbers.size

        current_number = numbers[counter]
        doubled_numbers << current_number * 2

        counter += 1
    end

    doubled_numbers
end

puts double_numbers([1, 2, 3]) == [2, 4, 6]
puts double_numbers([]) == []