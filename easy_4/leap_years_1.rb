# INPUT: Integer
# OUTPUT: Boolean

# PROBLEM:

# EXAMPLES/TEST CASES

# GOAL:

# MENTAL MODEL: Under the Gregorian Calendar, if a
# year is divisible by 400, that is year % 400 == 0, 
# then it is a leap year. If a year is divisible
# by 4 , then it is a leap year. If a year is 
# divisible by 100, then it is not a leap year. 
# All other years are not leap years.

# DATA STRUCTURE

# ALGORITHM

# CODING WITH INTENT
def leap_year?(year)
    if year % 100 == 0 && year % 400 != 0
        false
    elsif year % 4 == 0
        true
    else
        false
    end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true

# LAUNCH SCHOOL solution
def leap_year?(year)
    if year % 400 == 0
        true
    elsif year % 100 == 0
        false
    else
        year % 4 == 0
    end
end

def leap_year?(year)
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end