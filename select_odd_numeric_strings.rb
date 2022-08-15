# INPUT: Array
# OUTPUT: Array

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given an array of numeric strings. 
# You are tasked with selecting the numeric strings 
# whose numeric value is odd. Accumulate selected odd 
# numeric strings in a new array. Return new array.

# EXAMPLES / TEST CASES
# select_odd_numstrs(['1', '2', '3']) == ['1', '3']

# GOAL: Return a new array of selected numeric strings
# whose numeric value is odd

# DATA STRUCTURE
# Array -> Array

# ALGORITHM
# - Initialize a local variable and assign it to a 
#   new array
# - Iterate over each numeric string in input array
# - Convert current numeric string to its integer counterpart
#   (wish: HELPER METHOD #1)
# - Add converted element to the new array `selected_odd_numstrs`

# CODING WITH INTENT
# def select_odd_numstrs(numeric_strings)
#     numeric_strings.select do |num_str|
#         num_str.to_i.odd?
#     end
# end

def select_odd_numstrs(numstrings)
    selected_odd_numstrs = []
    counter = 0

    loop do
        break if counter == numstrings.size

        current_numstr = numstrings[counter]
        current_int = convert_str_to_int(current_numstr)
        selected_odd_numstrs << current_numstr if current_int.odd?

        counter += 1
    end

    selected_odd_numstrs
end

STRING_TO_INT = ('0'..'9').to_a.zip((0..9).to_a).to_h

def convert_str_to_int(numstr)
    STRING_TO_INT[numstr]
end

p str = ['1', '2', '3', '4']

p select_odd_numstrs(str)