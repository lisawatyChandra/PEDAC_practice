# INPUT: String (representing numeric digits)
# OUTPUT: Integer

# PROBLEM: Given a numeric string as input, return
# the appropriate number as an integer.

# EXAMPLES/TEST CASES
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570

# GOAL

# MENTAL MODEL: We will have to build a collection where
# each item in the collection pairs a numeric string 
# with its integer counterpart. We can either use a Hash
# or an Array to accomplish this, but a Hash makes the
# intention more explicit.

# DATA STRUCTURE
# String -> Array -> Integer

# ALGORITHM

# CODING WITH INTENT
STRING_TO_INTEGER = { '0' => 0, '1' => 1, '2' => 2,
  '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12,
  'D' => 13, 'E' => 14, 'F' => 15, 'a' => 10, 'b' => 11,
  'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15 }

def string_to_integer(decimal_string)
    decimal = 0

    decimal_string.chars.each do |num_str|
        decimal = decimal * 10 + STRING_TO_INTEGER[num_str]
    end

    decimal
end

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

def hexadecimal_to_integer(hexadecimal_string)
    decimal = 0

    hexadecimal_string.chars.each do |hexa_str|
        decimal = decimal * 16 + STRING_TO_INTEGER[hexa_str]
    end

    decimal
end

puts ''
puts hexadecimal_to_integer('4D9f') == 19871