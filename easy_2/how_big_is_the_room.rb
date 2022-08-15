SQMETERS_TO_SQFEET = 10
SQFEET_TO_SQMETERS = 0
SQFEET_TO_SQINCHES = 0
SQMETERS_TO_SQCENTIMETERS = 0

puts "Enter the length of the room in meters: "
length = gets.chomp.to_f

puts "Enter the width of the room in meters: "
width = gets.chomp.to_f

square_meters = (length * width).round(2)
square_feet = square_meters * SQMETERS_TO_SQFEET

puts "The area of the room is #{square_meters} square \
meters (#{square_feet} square feet)."