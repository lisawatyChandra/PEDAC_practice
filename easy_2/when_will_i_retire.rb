year = Time.now.year

puts ''
print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

working_years_left = retirement_age - current_age
retirement_year = year + working_years_left

puts ''
puts "It's #{year}. You will retire in #{retirement_year}."
puts "You have only #{working_years_left} years of work to go!"
puts ''