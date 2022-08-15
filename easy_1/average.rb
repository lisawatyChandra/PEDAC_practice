# INPUT: Array
# OUTPUT: Integer

def average(numbers)
    numbers.reduce(:+) / numbers.size.to_f
end

p average([1, 5, 87, 45, 8, 8]) #== 25