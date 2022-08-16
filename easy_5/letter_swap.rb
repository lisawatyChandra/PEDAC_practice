# INPUT: String
# OUTPUT: String

# PROBLEM:

# EXAMPLES/TEST CASES

# GOAL:

# MENTAL MODEL:

# DATA STRUCTURE

# ALGORITHM

# CODING WITH INTENT
def swap(string)
    string.split.map do |word|
        word[0], word[-1] = word[-1], word[0]
        word
    end.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'