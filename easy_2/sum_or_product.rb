num = ''
operation = ''

puts "\nPlease enter an integer greater than 0: "
loop do
    num = gets.chomp
    break if num.to_i.to_s == num
    puts "Please enter a valid integer.\n"
end

puts "\nEnter 's' to compute the sum, 'p' to compute the product."
loop do 
    operation = gets.chomp
    break if ['s', 'p'].include?(operation)
    puts "Please enter only 's' or 'p':"
end

def compute_sum(num)
    sum = 0
    1.upto(num) do |n|
        sum += n
    end
    sum
end

def compute_product(num)
    # product = 1
    # 1.upto(num) do |n|
    #     product *= n
    # end
    # product
    
    (1..num).inject(1) do |product, num|
        product * num
    end
end

num = num.to_i
if operation == 's'
    sum = compute_sum(num)
    puts "\nThe sum of the integers between 1 and #{num} is #{sum}.\n\n"
elsif operation == 'p'
    product = compute_product(num)
    puts "\nThe product of the integers between 1 and #{num} is #{product}.\n\n"
end