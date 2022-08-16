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

def string_to_signed_integer(decimal_string)
    case decimal_string[0]
    when '-' then -string_to_integer(decimal_string[1..-1])
    when '+' then string_to_integer(decimal_string[1..-1])
    else string_to_integer(decimal_string)
    end
end

def string_to_signed_integer(decimal_string)
    sign = decimal_string[0]
    if sign == '-' || sign == '+'
        decimal_string = decimal_string[1..-1]
    end

    decimal = string_to_integer(decimal_string)
    case sign
    when '+' then decimal
    when '-' then -decimal
    else decimal
    end 
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100