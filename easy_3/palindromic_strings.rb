# INPUT: String
# OUTPUT: Boolean

# PROBLEM: Given a string, check if the whole string is
# a palindrome. If it is, return `true`, otherwise return
# `false`. Implicit requirements derived from provide
# examples/test cases: case matters, space matters,
# punctuation matters.

# EXAMPLES/TEST CASES
# palindrome?('madam') == true
# palindrome?('Madam') == false 
# palindrome?("madam i'm adam") == false
# palindrome?('356653') == true

# DATA STRUCTURE:
# String -> Array -> Boolean

# ALGORITHM
# - 

# CODING WITH INTENT
def palindrome?(string)
    string == string.reverse
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false 
puts palindrome?("madam i'm adam") == false
puts palindrome?('356653') == true

puts ''
puts palindrome?(%w(m a d a m)) == true
puts palindrome?(%w(M a d a m)) == false 
puts palindrome?(['m', 'a', 'd', 'a', 'm', ' ', 'i', "'", 'm', ' ', 'a', 'd', 'a', 'm']) == false
puts palindrome?(%w(3 5 6 6 5 3)) == true