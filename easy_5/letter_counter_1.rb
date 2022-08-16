# INPUT: String
# OUTPUT: Hash

# PROBLEM: Write a method that takes a string with one
# or more space separated words and returns a hash
# that shows the number of words of different sizes.
# In the context of this problem, words consist of any
# string of characters that do not include a space.

# EXAMPLES/TEST CASES
# word_sizes('Four score and seven.') == { 4=>1, 3=>1, 5=>1, 6=>1 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3=>5, 6=>1, 7=>2 }
# word_sizes("What's up doc?") == { 2=>1, 4=>1, 6=>1 }
# word_sizes('') == {}

# GOAL

# MENTAL MODEL

# DATA STRUCTURE

# ALGORITHM
# - Initialize a local variable `letter_counter` 
#   and assign it to an empty hash
# - Split input string into an array of words
# - Iterate over each word in the array
# - Get the size of current word
# - check if the `letter_counter` hash already
#   has a that size as a key
#   - if yes, update the hash by incrementing by `1`
#     that key's associated value
#   - if no, assign a new key:value pair to the
#     `letter_counter` hash, where the key is the
#     size of current word, and its associated value
#     is `1`.
# - Once we're done iterating through the array of words,
#   return the hash

# CODING WITH INTENT
def word_sizes(string)
    letter_counter = Hash.new(0)

    string.split.each do |word|
        word_size = word.size
        letter_counter[word_size] += 1
    end

    letter_counter
end

puts word_sizes('Four score and seven.') == { 4=>1, 3=>1, 5=>1, 6=>1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3=>5, 6=>1, 7=>2 }
puts word_sizes("What's up doc?") == { 2=>1, 4=>1, 6=>1 }
puts word_sizes('') == {}