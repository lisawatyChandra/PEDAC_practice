# INPUT: String
# OUTPUT: String

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Implement a method that takes two arguments,
# a sentence string consisting of one or more words,
# a value which represents a particular case type
# either snake case, camel case, or upper snake case.
# The method should return the given string transformed
# into the appropriate case.

# EXAMPLES / TEST CASES
# change_case("The sky was blue", :snake) == "the_sky_was_blue"
# change_case("The sky was blue", :camel) == "TheSkyWasBlue"
# change_case("The sky was blue", :upper_snake) == "THE_SKY_WAS_BLUE"

# GOAL: Given an input string and a desired case type, return the
# string with the appropriate case

# DATA STRUCTURE
# String -> String

# ALGORITHM
# - check the desired case from the second argument
# - if snake case, return a snake-cased string
#   (wish: HELPER METHOD #1)
# - if camel case, return a camel-cased string 
#   (wish: HELPER METHOD #2)
# - if upper snake case, return an upper-snake-cased 
#   string (wish: HELPER METHOD #3)
#
# HELPER METHOD #1
# - split input string into an array of words
# - iterate over each word in the array
# - downcase current word
# - reassign current word to its downcased version
# - once `#each` is done iterating through the array
#   of words, call `Array#join` on the mutated array,
#   passing is `'_'` as argument
#
# HELPER METHOD #2
# - split input string into an array of words
# - iterate over each word in the array
# - capitalize current word
# - reassign current word to its capitalized version
# - once `#each` is done iterating through the array
#   of words, call `Array#join` on the mutated array,
#   without passing any argument
#
# HELPER METHOD #3
# - split input string into an array of words
# - iterate over each word in the array of words
# - uppercase current word
# - reassign current word to its uppercased version
# - once `#each` is done iterating through the array,
# - call `Array#join` on the mutated array,
# - passing in `'_'` as argument
#


# CODING WITH INTENT
def change_case(string, new_case)
    case new_case
    when :snake
        snake(string)
    when :camel
        camel(string)
    when :upper_snake
        upper_snake(string)
    else
        puts "Invalid case type!"
    end
end

def snake(string)
    words = string.split

    words.each do |word|
        word.downcase!
    end.join('_')
end

def camel(string)
    words = string.split

    words.each do |word|
        word.capitalize!
    end.join
end

def upper_snake(string)
    words = string.split

    words.each do |word|
        word.upcase!
    end.join('_')
end

puts change_case("The sky was blue", :snake)
puts change_case("The sky was blue", :camel)
puts change_case("The sky was blue", :upper_snake)

puts

sentence = "iterate over the array of substrings"
puts sentence.object_id
puts change_case(sentence, :upper_snake).object_id