# INPUT: Integer
# OUTPUT: Integer

def sum(num)
    num.to_s.chars.map do |num_str|
        num_str.to_i
    end.reduce(:+)
end

puts sum(23)
puts sum(496)
puts sum(123_456_789)