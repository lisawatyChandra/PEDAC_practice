# INPUT: Integer
# OUTPUT: String

# PROBLEM: 

# EXAMPLES/TEST CASES

# GOAL:

# MENTAL MODEL: One century consists of 100 years. 
# Which means 1 century == 100 years. So if we are in
# year 10675, then 10675 / 100 gives us century 106
# plus 75 years. If we are in year 10600, then
# 10600 / 100 gives us century 106. We can conclude
# that if years % 100 yields a remainder, then we
# want to increment the quotient of years / 100 by 1.
# 
# Next problem is figuring which century-ending needs
# 'st', 'nd', 'rd', 'th' in its ordinal expression.
# century.to_s[-1] == 1 ends with 'st'
# century.to_s[-1] == 2 ends with 'nd'
# century.to_s[-1] == 3 ends with 'rd'
# century.to_s[-1] >= 4 ends with 'th'
# one caveat, however, if
# century.to_s[-2..-1] == 11 || 12 || 13,
# then it ends with 'th'

# DATA STRUCTURE

# ALGORITHM

# CODING WITH INTENT
def century(year)
    century = (year / 100) + 1
    century = year / 100 if year % 100 == 0
    century = century.to_s

    if ['11', '12', '13'].include?(century[-2..-1])
        century + 'th'
    elsif century[-1] == '1'
        century + 'st'
    elsif century[-1] == '2'
        century + 'nd'
    elsif century[-1] == '3'
        century + 'rd'
    else
        century + 'th'
    end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

# LAUNCH SCHOOL solution
def century(year)
    century = year / 100 + 1
    century -= 1 if year % 100 == 0
    century.to_s + century_suffix(century)
end

def century_suffix(century)
    return 'th' if [11, 12, 13].include?(century % 100)
    last_digit = century % 10

    case last_digit
    when 1 then 'st'
    when 2 then 'nd'
    when 3 then 'rd'
    else 'th'
    end
end