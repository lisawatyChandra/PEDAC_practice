print "What is the bill? "
bill_amount = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f / 100
puts ''

def calculate_tip(bill_amount, tip_percentage)
    bill_amount * tip_percentage
end

tip_amount = calculate_tip(bill_amount, tip_percentage).round(2)

puts "The tip is #{format("%.2f", tip_amount)}"
puts "The total is #{format("%.2f", total_amount)}"
