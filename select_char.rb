# INPUT: String, String
# OUTPUT: String

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given a string of characters
# and a character string. Uou are tasked with 
# finding all occurrences of the given character
# string from the input string, 
# every time that character occurs in the given string, 
# pick that character out of the given string, 
# accumulate all occurences of that character in 
# a new string

# EXAMPLES/TEST CASES:
# select_char('abcdefg', 'g') == 'g'
# select_char('what is the', 't') == 'tt'
# select_char('hello world!', 'l') == 'lll'
# select_char('mamma mia', 'x') == ''

# GOAL: return a string of selected chars from input string

# DATA STRUCTURE:
# String -> String

# ALGORITHM:
# - Find occurrences of a given character from the input string
# - When found, push character to a `selected_chars` string
# - Return `selected_chars`

# CODING WITH INTENT:
def select_char(string, char)
    selected_chars = ''
    counter = 0

    loop do
        current_char = string[counter]

        if current_char == char
            selected_chars << current_char
        end

        counter += 1
        break if string.size == counter
        # placing exit condition after loop has
        # iterated once will cause an infinite loop
        # if input string is an empty string
        # since after loop has iterated once
        # counter would be incremented from 0 to 1
        # and thus exit condition
        # `counter == 1 == 0 == string.size`
        # would never be met, would never evaluate
        # as true
    end

    selected_chars
end

puts select_char('abcdefg', 'g') == 'g'
puts select_char('what is the', 't') == 'tt'
puts select_char('hello world!', 'l') == 'lll'
puts select_char('mamma mia', 'x') == ''
puts select_char('', 'r') == ''
