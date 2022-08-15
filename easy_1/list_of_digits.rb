# INPUT: Integer
# OUTPUT: Array of integers

# PROBLEM: Write a method that takes one argument,
# a positive integer, and returns a list of the 
# digits in the number.

# EXAMPLES/TEST CASES
# digit_list(12345) == [1, 2, 3, 4, 5]
# digit_list(7) == [7]
# digit_list(375290) == [3, 7, 5, 2, 9, 0]
# digit_list(444) == [4, 4, 4]

# MENTAL MODEL
# - We want to a multiple digits number into separate 
#   digits. In other words, we want to list the digits
#   in a number. How can we achieve that?
#   In a decimal number system, each place of the digits
#   is greater by an order of magnitude, and that magnitude
#   is multiples of 10 for the place immediately to the
#   left. That is, 10 is larger than 1 by an order of 
#   magnitude. 100 is larger than 1 by two orders of 
#   magnitude. 100 is larger than 10 by an order of 
#   magnitude. Say we have a number, 125. We can obtain
#   the digit 5 by dividing 125 by 10, which gives us
#   a quotient of 12 and a remainder of 5. Then we can
#   obtain the digit 2 by dividing 12 by 10, which 
#   gives us a quotient of 1 and a remainder of 2.
#   Then to capture the last digit, that is the leftmost
#   digit in a multiple-digit number, we can divide the
#   last dividend, in this case, 1, by 10, to obtain
#   the quotient of 0 and a remainder of 1.  
#   Then we collect all those remainders in an array,
#   and there we have our list of digits.
#
#   This means we need some kind of a loop.
#   We need a variable to capture the quotient.
#   We need an array to collect the remainders.
#   We'll exit the loop when the quotient equals 0.

# DATA STRUCTURE
# Integer -> Array of integers

# ALGORITHM
# - 

# CODING WITH INTENT
def digit_list(number)
    list = []

    loop do
        remainder = number % 10
        list << remainder
        number = number / 10
        break if number == 0
    end

    list
end

p digit_list(12345)