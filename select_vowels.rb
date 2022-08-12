# INPUT: String
# OUTPUT: String

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given a string of characters, you are
# tasked with finding all occurrences of vowels in the
# input string. When found, pick that character out of 
# the input string, accumulate all occurrences of vowels
# in a new string.

# EXAMPLES/TEST CASES:
# select_vowels("the quick brown fox") == "euioo"
# select_vowels("I wandered lonely as a cloud") == "Iaeeoeaaou"

# GOAL: return a string of vowels selected from input
# string

# DATA STRUCTURE:
# String -> String

# ALGORITHM:
# - Find all occurrences of vowels from the input string
# - when found, push vowel to a `selected_vowels` string
# - return `selected_vowels`

# CODING WITH INTENT:
def select_vowels(string)
    selected_vowels = ''
    counter = 0

    loop do
        current_char = string[counter]

        if 'AEIOUaeiou'.include?(current_char)
            selected_vowels << current_char
        end

        counter += 1
        break if counter == string.size
    end

    selected_vowels
end

puts select_vowels("the quick brown fox") == "euioo"
puts select_vowels("I wandered lonely as a cloud") == "Iaeeoeaaou"
# select_vowels('')