print "\nPlease write word or multiple words: "
input = gets.chomp
number_of_characters = input.delete(' ').size

puts "\nThere are #{number_of_characters} characters in \"#{input}\".\n\n"