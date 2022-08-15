numbers = []

(1..6).each do |n|
    case n
    when 1
        order = "#{n}st"
    when 2
        order = "#{n}nd"
    when 3
        order = "#{n}rd"
    when n >= 4
        order = "#{n}th"
    end

    puts "==> Enter the #{order} number: "
    numbers << gets.chomp.to_i
end

if numbers[0..-2].include?(numbers[-1])
    puts "The number #{numbers[-1]} appears in #{numbers[0..-2].to_s}."
else
    puts "The number #{numbers[-1]} does not appear in #{numbers[0, 5].to_s}."
end