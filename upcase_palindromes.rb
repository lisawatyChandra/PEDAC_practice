# INPUT: String
# OUTPUT: String

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Given a string, write a method `change_me`
# which returns the same string but with all the words
# in it that are palindromes uppercased.

# EXAMPLES / TEST CASES
# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

# GOAL: Return the same string but changed according to
# the given criteria

# DATA STRUCTURE
# String -> String

# ALGORITHM
# - Split the input string into an array of words, `words`
# - Iterate over each word in `words`, 
# - check if current word is a palindrome (wish: 
#   HELPER METHOD #1)
# - if yes, reassign current word to its upcased version
# - join the words back into a string with each word
#   delimited by a space

# CODING WITH INTENT
def change_me(string)
    string.split.map do |word|
        word.upcase! if is_palindrome?(word)
        word
    end.join(' ')
end

def is_palindrome?(word)
    word == word.reverse
end

puts change_me("We will meet at noon") == "We will meet at NOON"
puts change_me("No palindromes here") == "No palindromes here"
puts change_me("") == ""
puts change_me("I LOVE my Mom and dad equally") == "I LOVE my MOM and DAD equally"
