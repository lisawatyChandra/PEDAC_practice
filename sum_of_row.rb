# INPUT: Integer
# INTERMEDIATES: Array of Arrays
# OUTPUT: Integer

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Imagine a sequence of consecutive even 
# integers beginning with 2. The integers are grouped
# in rows, with the first row containing one integer,
# the second row two integers, the third row three
# integers, and so on. Given an integer representing
# the number of a particular row, return an integer 
# representing the sum of all the integers in that
# row.

# MENTAL MODEL:
# 2, 4, 6, 8, 10, 12, 14, ...
# row 1 -> 2
# row 2 -> 4, 6
# row 3 -> 8, 10, 12
# row 4 -> 14, 16, 18, 20
# ...
# row 6 -> 32, 34, 36, 38, 40, 42
# ...
#
# Given an integer indicating the desired row number,
# how can we reach that row other than creating every
# preceding rows? Is it possible to conjure up the 
# desired row from the row number alone? The row number
# dictates the number of integers on that row, but it
# doesn't clue us in as to what the starting integer
# on that row would be. We do know from the problem
# description that the starting integer of a row would
# be 2 plus the last integer on the preceding row.
# This means we'll have to create a loop, inside the
# loop, we'll create the row. For example, for the second
# row, the loop would run two times, for the third row,
# the loop would run three times, for the sixth row, the
# loop would run six times.
# The first row always starts at `2`. So we'll initialize
# a local variable named `start_integer` in an outer scope
# and assign it to `2`.
# Then inside the loop, after the first row, we'll keep
# reassigning the `start_integer` to the last integer of
# the preceding row plus 2.

# EXAMPLES/TEST CASES
# sum_of_row(1) == 2
# sum_of_row(2) == 10
# sum_of_row(3) == 30
# sum_of_row(4) == 68
# sum_of_row(6) == 222

# GOAL:

# DATA STRUCTURE
# Integer -> Array of Arrays -> Integer

# ALGORITHM

# CODING WITH INTENT
def sum_of_row(number)
    start_integer = 2
    counter = 1
    current_row = nil

    loop do
        current_row = create_row(start_integer, counter)
        break if counter >= number
        counter += 1
        start_integer = current_row[-1] + 2
    end

    p current_row
    current_row.reduce(:+)
end

def create_row(start_integer, length_of_row)
    row = []
    counter = 0

    loop do
        row << start_integer
        start_integer += 2
        counter += 1
        break if counter >= length_of_row
    end

    row
end

puts sum_of_row(1) == 2
p sum_of_row(2) #== 10
puts sum_of_row(3) == 30
puts sum_of_row(4) == 68
puts sum_of_row(6) == 222

p create_row(4, 2)

p sum_of_row(10)
p sum_of_row(20)