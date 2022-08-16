# INPUT: String
# OUTPUT: Integer

# PROBLEM: Given an input string that represents the time
# of day in a 24-hour format, return the number of minutes
# before midnight, and the number of minutes after midnight.
# this implies two different methods, `#before_midnight(string)`,
# `#after_midnight(string)`. Both methods should return
# a value in the range `0..1439`.

# EXAMPLES/TEST CASES
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# GOAL:

# MENTAL MODEL: First we want to extract the two-character
# hour string and the two-character minute string from the
# given input string. Next, we want to convert those numeric
# strings to integers.
# for `#after_midnight`, we will multiply number of hours
# by 60 to convert it into minutes, then we add that to 
# the number of minutes given per input string.
# for `#before_midnight`, in this context, we can simply
# subtract the return value that we get from `#after_midnight`,
# from 1440 minutes, to obtain the number of minutes before
# midnight that leads to the same 24-hour format time of
# day string representation.

# DATA STRUCTURE

# ALGORITHM

# CODING WITH INTENT
# def after_midnight(time_string)
#     hours = time_string[0..1].to_i
#     minutes = time_string[3..-1].to_i
#     minutes += hours * 60

#     # if minutes == 1440
#     #     minutes = 0
#     # else
#     #     minutes
#     # end
#     minutes % 1440
# end

# def before_midnight(string)
#     (1440 - after_midnight(string)) % 1440
# end

# puts after_midnight('00:00') #== 0
# puts before_midnight('00:00') #== 0
# puts after_midnight('24:00') #== 0
# puts before_midnight('24:00') #== 0
# puts after_midnight('12:34') #== 754
# puts before_midnight('12:34') #== 686

# FURTHER EXPLORATION
require 'time'

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def before_midnight(string)
    (MINUTES_PER_DAY - after_midnight(string)) % MINUTES_PER_DAY
end

def after_midnight(string)
    hours = Time.parse(string).hour
    minutes = Time.parse(string).min
    hours * MINUTES_PER_HOUR + minutes
end

puts after_midnight('00:00') #== 0
puts before_midnight('00:00') #== 0
puts after_midnight('24:00') #== 0
puts before_midnight('24:00') #== 0
puts after_midnight('12:34') #== 754
puts before_midnight('12:34') #== 686