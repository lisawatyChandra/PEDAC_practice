def how_old_is_teddy(name="Teddy")
    puts "#{name} is #{rand(20..200)} years old!"
end


counter = 10
loop do
    puts "What is your name? "
    name = gets.chomp
    name == '' ? how_old_is_teddy : how_old_is_teddy(name)
    break if counter == 0
    counter -= 1
end