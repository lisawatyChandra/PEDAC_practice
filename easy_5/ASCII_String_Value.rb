# INPUT: String
# OUTPUT: Integer

# PROBLEM: Given an input string, return the sum of the
# ASCII values of every character in the string.

# EXAMPLES/TEST CASES
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0

# GOAL:

# MENTAL MODEL:

# DATA STRUCTURE
# String -> Array -> Integer

# ALGORITHM
# - Split input string into an array of characters
# - Reduce the array of characters into the sum of 
#   each character's ascii value

# CODING WITH INTENT
def ascii_value(string)
    string.chars.reduce(0) do |ascii_val, char|
        ascii_val + char.ord
    end
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
