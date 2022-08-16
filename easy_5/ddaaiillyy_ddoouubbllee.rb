# INPUT: String
# OUTPUT: String

# PROBLEM: Write a method that takes a string argument
# and returns a new string that contains the value of
# the original string with all consecutive duplicate
# characters collapsed into a single character.

# EXAMPLES/TEST CASES

# GOAL:

# MENTAL MODEL:

# DATA STRUCTURE
# String -> String

# ALGORITHM
# - Initialize a local variable `no_doubles` and 
#   assign it to an empty string
# - Split input string into an array of characters
# - Iterate over each character in array of characters
# - Check if last character in `no_doubles` is equal
#   to current character
#   - if it is, do nothing, i.e. continue to next iteration
#   - if it isn't, append current character to `no_doubles`

# CODING WITH INTENT
def crunch(string)
    # no_doubles = ''

    # string.chars.each do |char|
    #     no_doubles << char if no_doubles[-1] != char
    # end

    # no_doubles

    string.each_char.with_object('') do |letter, new_str|
        new_str << letter unless new_str[-1] == letter
    end
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

# FURTHER EXPLORATION
# using regex
def crunch(str)
    str.gsub(/(.)\1+/, '\1')
end