# INPUT: Integer
# OUTPUT: String

# PROBLEM: The time of day can be represented as 
# the number of minutes before or after midnight.
# If the number of minutes is positive, the time 
# is after midnight. If the number of minutes is
# negative, the time is before midnight.
#
# Given an integer input that represent the number
# of minutes before or after midnight, return 
# a string representation of the time in a 24-hour
# format "hh:mm". Any integer input is expected, this
# implicitly mean that the integer value can be greater
# than 1440, that is, greater than the number of 
# minutes in a day.

# EXAMPLES/TEST CASES
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# GOAL

# MENTAL MODEL: So we need to know how many minutes are
# in 24 hours. That's 24 * 60 == 1440 minutes. So, if
# a negative integer input indicates the number of 
# minutes before midnight, we can simply subtract that 
# negative integer input from 1440 to obtain the number
# of minutes that has elapsed after midnight.
#
# Since we are representing the time in a 24-hour format,
# we are in a world of periodic system here. From the
# examples provided, we see that we can be given input
# integer that is greater than the number of minutes that
# are in 24 hours. In order to obtain the number of minutes
# elapsed after midnight, or the number of minutes to go
# before midnight, we want to normalize the given input
# integer so that it is in the range of `0...1440`.
# That is, so we only have to deal with values that
# are positive but less than a full day: 0-1439.
# Notice that in terms of representing time in a 
# 24-hour format, 0 minutes elapsed == 1440 minutes 
# elapsed.
#
# Recall that in Ruby, `%` is a modulo operator, not a 
# remainder operator, thus as long as the divisor is
# greater than zero, its return value would be positive.
# That means we can call `Integer#%` on the input integer
# in order to obtain the normalized number of minutes elapsed.
#
# Once we have the normalized number of minutes elapsed,
# We need to know how many hours can fit into those
# minutes, and how many minutes are left as a remainder.
# We can invoke `Integer#divmod` on the normalized input.
#
# Once we have the number of hours and the number of
# minutes, all we have to do is interpolate them into
# a string with the appropriate formatting.
#


# DATA STRUCTURE
# Integer -> Array -> String

# ALGORITHM

# CODING WITH INTENT
HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
SECONDS_IN_MINUTE = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(minutes)
    minutes = minutes % MINUTES_IN_DAY

    hours, minutes = minutes.divmod(MINUTES_IN_HOUR)
    format("%02d:%02d", hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# FURTHER EXPLORATION 2
# How would you approach this problem if you were allowed
# to use Ruby's `Date` and `Time` classes?
def time_of_day(minutes)
    time = minutes * SECONDS_IN_MINUTE
    Time.at(time).utc.strftime("%H:%M")
end
# courtesy of Matt Ellicott

def time_of_day(minutes)
    time = Time.new(1977)
    time += (minutes * SECONDS_IN_MINUTE)
    time.strftime("%H:%M")
end
# courtesy of Wayne Olson

# FURTHER EXPLORATION 3
def time_of_day(minutes)
    time = Time.new(1978) # using a year where 
    # midnight falls on a Sunday per the problem
    # requirement, that is, New Year's day is on
    # a Sunday, or January 1 falls on Sunday
    time += minutes * SECONDS_IN_MINUTE
    time.strftime("%A %H:%M")
end
# courtesy of Wayne Olson