require 'pry'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(decimal_number)
    if decimal_number > 0
        sign = '+'
    elsif decimal_number < 0
        sign = '-'
    else
        sign = ''
    end

    decimal_number = decimal_number >= 0 ? decimal_number : -decimal_number
    decimal_string = integer_to_string(decimal_number)

    if sign == '+'
        "+#{decimal_string}"
    elsif sign == '-'
        "-#{decimal_string}"
    else
        decimal_string
    end
end

def integer_to_string(decimal_number)
    numbers = []

    loop do
        current_digit = decimal_number % 10
        numbers.unshift(current_digit)
        decimal_number = decimal_number / 10
        break if decimal_number == 0
    end

    numbers.each_with_object("") do |num, num_str|
        num_str << DIGITS[num]
    end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'