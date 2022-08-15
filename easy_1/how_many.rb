# INPUT: Array
# OUTPUT: Hash

# PROBLEM: Write a method that counts the number of 
# occurrences of each element in a given array.

# EXAMPLES/TEST CASES
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 
#             'truck', 'motorcycle', 'motorcycle',
#             'car', 'truck']
# 
# count_occurrences(vehicles) == { 'car'=>4, 'truck'=>3,
# 'SUV'=>1, ''motorcycle'=>2}
#

# DATA STRUCTURE
# Array -> Hash

# ALGORITHM
# - 

# CODING WITH INTENT
def count_occurrences(list)
    list.map!(&:downcase).uniq.each do |word|
        puts "#{word} => #{list.count(word)}"
    end
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 
            'truck', 'motorcycle', 'motorcycle',
            'car', 'truck', 'suv', 'TRUCK']

puts count_occurrences(vehicles)
