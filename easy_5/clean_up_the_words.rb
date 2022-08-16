# INPUT: String
# OUTPUT: String

# PROBLEM: Given an input string that consists of
# some words (all lowercased) and an assortment of
# non-alphabetic characters, write a method that
# returns that string with all of the non-alphabetic
# characters replaced by spaces. If one or more 
# non-alphabetic characters occur in a row, you should
# only have one space in the result, that is, the 
# result should never have consecutive spaces).

# EXAMPLES/TEST CASES:
# cleanup("---what's my +*& line?") == " what s my line "

# MENTAL MODEL:

# GOAL:

# DATA STRUCTURE:

# ALGORITHM:

# CODING WITH INTENT
def cleanup(string)
    string.gsub(/[^A-z]/, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '