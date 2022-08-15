def square(n)
    multiply(n, n)
end

def multiply(a, b)
    a * b
end

def power_to_the(a, n)
    product = 1

    (n - 1).times do
        product *= multiply(a, a)
    end
    
    product
end

puts square(4)
puts power_to_the(2, 4)