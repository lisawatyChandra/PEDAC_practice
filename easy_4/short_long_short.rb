# INPUT: String
#        String
# OUTPUT: String

# PROBLEM:

# EXAMPLES/TEST CASES:
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# DATA STRUCTURE
# String -> String

# ALGORITHM
# - 

# CODING WITH INTENT
def short_long_short(str1, str2)
    str1.size < str2.size ? str1 + str2 + str1 : str2 + str1 + str2
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"

def short_long_short(str1, str2)
    arr = [str1, str2].sort_by do |el|
        el.length
    end

    arr.first + arr.last + arr.first
end