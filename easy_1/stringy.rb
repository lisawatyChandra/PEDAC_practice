# INPUT: Integer
# OUTPUT: String

def stringy(num, initial=1)
    str = ''

    num.times do |n|
        if initial == 1
            char = n.even? ? '1' : '0'
        else
            char = n.even? ? '0' : '1'
        end

        str << char
    end

    str
end

puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4)
puts stringy(7)