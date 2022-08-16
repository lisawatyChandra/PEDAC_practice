# INPUT: Array
# OUTPUT: Array

# PROBLEM: Given an array of numbers, return an array 
# with the same number of elements, where each element
# has the running total from the original array.

# EXAMPLES/TEST CASES
# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

# GOAL:

# MENTAL MODEL:

# DATA STRUCTURE
#

# ALGORITHM
# - Iterate over given input array
# - Initialize an outer-scoped local variable `running_total`
#   to capture running totals
# - Use running totals to transform each element

# CODING WITH INTENT
# def running_total(numbers)
#     running_totals = 0

#     numbers.map do |number|
#         running_totals += number
#     end
# end

def running_total(numbers)
    sum = 0

    numbers.each_with_object([]) do |number, array|
        array << sum += number
    end
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []