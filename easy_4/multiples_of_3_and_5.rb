# INPUT: Integer
# OUTPUT: Integer

# PROBLEM:

# EXAMPLES/TEST CASES
# multisum(20) == 103
# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# EXPLICIT REQUIREMENTS, IMPLICIT REQUIREMENTS:
# from the provided example, we see that we can 
# include the target number if it is a multiple 
# of either factors.

# GOAL

# MENTAL MODEL: We want to collect the multiples of 3
# and 5 up to a target number, including the target number
# if it happens to be a multiple of either 3 or 5.

# DATA STRUCTURE
# Integer -> Array of Integers -> Integer

# ALGORITHM
# - We will have an array of factors. 
# - We have a target 
#   number that serves as the stopping point when we
#   are collecting multiples of either factors.
# - So, we will iterate over each factor in the array 
#   of factors.
# - For each factor, we'll run a loop for collecting
#   the multiples of that factor, exit condition of
#   the loop is when current multiple is >= target number.
# - Once we're done iterating through the array of 
#   factors, remove duplicate multiples
# - Once we have an array of unique multiples, sum up
#   up the multiples.


# CODING WITH INTENT
def multisum(number)
    factors = [3, 5]
    multiples = []

    factors.each do |factor|
        current_multiple = factor
        loop do
            break if current_multiple > number
            multiples << current_multiple if !multiples.include?(current_multiple)
            current_multiple += factor
        end
    end

    multiples.reduce(:+)
end


puts multisum(20) == 98
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

# LAUNCH SCHOOL solution
def multiple?(number, divisor)
    number % divisor == 0
end

def multisum(max_value)
    sum = 0
    
    1.upto(max_value) do |number|
        if multiple?(number, 3) || multiple?(number, 5)
            sum += number
        end
    end

    sum
end