puts "==> Enter the first number: "
num1 = gets.chomp.to_f

num2 = ''
loop do
    puts "==> Enter the second number: "
    num2 = gets.chomp.to_f
    break if num2 != 0
    puts "==> Please enter a number other than 0: "
end

sum = format("%.2f", num1 + num2)
difference = format("%.2f", num1 - num2)
product = format("%.2f", num1 * num2)
quotient = format("%.2f", num1 / num2)
remainder = format("%.2f", num1 % num2)
power = format("%.2f", num1 ** num2)

puts "==> #{num1} + #{num2} = #{sum}"
puts "==> #{num1} - #{num2} = #{difference}"
puts "==> #{num1} * #{num2} = #{product}"
puts "==> #{num1} / #{num2} = #{quotient}"
puts "==> #{num1} % #{num2} = #{remainder}"
puts "==> #{num1} ** #{num2} = #{power}"