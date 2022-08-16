# INPUT: Integer
# OUTPUT: String

# PROBLEM: Given a positive integer or zero, return 
# its string representation.

# EXAMPLES/TEST CASES
# integer_to_string(4321) == '4321'
# integer_to_string(0) == '0'
# integer_to_string(5000) == '5000'

# GOAL: We will need a collection of key:value pairs
# that associate an integer with its string representation.

# MENTAL MODEL: 

# DATA STRUCTURE
# Integer -> String

# ALGORITHM

# CODING WITH INTENT
INTEGER_TO_STRING = { 0 => '0', 1 => '1', 2 => '2', 
    3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7',
    8 => '8', 9 => '9' }

# for this problem, it's quicker to use an array for 
# storing the key:value pairs that associate a positive
# integer with its string representation since the
# the desired keys are integers, and arrays are naturally
# keyed by positive integers.

def integer_to_string(decimal_number)
    numbers = []

    loop do
        current_digit = decimal_number % 10
        numbers.unshift(current_digit)
        decimal_number = decimal_number / 10
        break if decimal_number == 0
    end

    numbers.each_with_object("") do |num, num_str|
        num_str << INTEGER_TO_STRING[num]
    end
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

# LAUNCH SCHOOL solution
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8',
  '9']

def integer_to_string(number)
    result = ''
    
    loop do
        number, remainder = number.divmod(10)
        result.prepend(DIGITS[remainder])
        break if number == 0
    end

    result
end