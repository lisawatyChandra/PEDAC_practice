# INPUT: String
# OUTPUT: Array of Strings

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Given a string, write a method 
# `palindrome_substrings` which returns all the
# substrings from a given string which are
# palindromes. Consider palindrome words case sensitive.

# EXAMPLES / TEST CASES
# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# GOAL: Given an input string, pick out substrings that
# are palindromic. Collect these palindromic substrings
# in an array, return the array.

# DATA STRUCTURE
# String -> Array of Strings

# ALGORITHM
# - initialize a local variable named `results` and assign
#   it to an empty array
# - create an array named `substring_arr` that contains
#   all the substrings of the input string that are at
#   least 2 characters long (wish: HELPER METHOD #1)
# - loop through the substrings in the `substring_arr` array.
# - check if current substring is a palindrome (wish:
#   HELPER METHOD #2)
# - if it is, add current substring to a `results` array
# - return the `results` array
#
# HELPER METHOD #1: given input string, find substrings
# of 2 characters or more
# - MENTAL MODEL for HELPER METHOD #1:
#   iterate through input string, slicing the string to
#   obtain substrings. how do we obtain substrings from a
#   string? by calling `String#slice` on said string, 
#   passing in two integers as argument to the `#slice`
#   method call, first integer argument acts as the start-index
#   of resulting substring, and second integer acts as the
#   end-index of resulting substring. Which means, instead of
#   iterating over each character in the input string,
#   we iterate over a range of integers twice, once for
#   the start-index, and once more for the end-index. 
#   This will have to be a nested iteration: that is, 
#   for every start-index, we shift the end index one 
#   character at a time to obtain longer and longer 
#   substrings, starting from a substring of 2 characters
#   long to a substring that stretches to the last character.
#
# - EXAMPLES/TEST CASES for HELPER METHOD #1:
#   substrings('abc') == ['ab', 'abc', 'bc']
#   substrings('happy') == ['ha', 'hap', 'happ', 'happy',
#                           'ap', 'app', 'appy', 'pp',
#                           'ppy', 'py']
#
# - DATA STRUCTURE for HELPER METHOD #1:
#   String -> Array of Strings
# 
# - ALGORITHM for HELPER METHOD #1:
#   - Initialize a local variable named `substrings` and
#     assign it to an empty array
#   - Iterate over a range of integers that will serve
#     as the starting index of sets of substrings, where
#     the substrings in the first set of substrings will 
#     start at index 0, the substrings in the second set
#     of substrings will start at index 1, ..., and the
#     substrings in the last set will start at index n - 2, 
#     for an input string of size n. This range will start
#     from 0 up to n - 2, inclusive.
#   - For every starting index, we will iterate over a
#     range of integers that will serve as the ending 
#     index of our substrings. We want our substrings to
#     be at least two characters long so we want a range 
#     of integers that start from one index after our
#     current starting index, that is, `current_start_index + 1`,
#     and ends at the last index of the given input string,
#     which is n - 1. Syntactically in Ruby, we write
#    `(current_start_index + 1..string.size - 1)`.
#    Then for every integer in the second range, we call
#    the passed in block. Inside the block, we call
#    `String#slice` on the given input string, passing in
#    `current_start_index` and `current_end_index` as arguments
#    into the `#slice` method call. We then push the 
#    return value of this `#slice` method call into our 
#    `substrings` array initialized in the outer scope.
#    Every time we're done iterating through the second
#    range of integers, we have obtained a set of substrings
#    where all the substrings start from the same current
#    starting index.
#  - Once we're done iterating through the first range of
#    integers, we have obtained sets of substrings, all
#    collected in our `substrings` array.
#  - Then we return `substrings`.

# CODING WITH INTENT
def palindrome_substrings(string)
    all_substrings = substrings(string)
    results = []

    all_substrings.each do |substr|
        results << substr if is_palindrome?(substr)
    end

    results
end

def substrings(string)
    all_substrings = []

    (0..string.size - 2).each do |start_index|
        (start_index + 1..string.size - 1).each do |end_index|
            all_substrings << string[start_index..end_index]
        end
    end

    all_substrings
end

def is_palindrome?(string)
    string == string.reverse
end

p palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
p palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
p palindrome_substrings("palindrome") == []
p palindrome_substrings("") == []

p substrings('abcddcbA')