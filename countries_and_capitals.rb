# INPUT: Hash
# OUTPUT: Hash

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Given a hash which contains keys representing
# countries and values representing the capital cities
# of those countries, return a new hash containing all
# of the key-value pairs where the country begins with
# the letter 'B'.

# EXAMPLES / TEST CASES
# countries_and_capitals = {
#     'France' => 'Paris',
#     'Belgium' => 'Brussels',
#     'Morocco' => 'Rabat',
#     'Barbados' => 'Bridgetown',
#     'Peru' => 'Lima',
#     'Bolivia' => 'La Paz',
#     'Brazil' => 'Brasilia'
# }
# select_b_countries(countries) == {
#     'Belgium'=>'Brussels',
#     'Barbados'=>'Bridgetown',
#     'Brazil'=>'Brasilia'
# }

# GOAL

# DATA STRUCTURE
# Hash -> Hash

# ALGORITHM

# CODING WITH INTENT
def select_b_countries(countries)
    countries.select do |country, capital|
        country[0].downcase == 'b' 
    end
end

countries_and_capitals = {
    'France' => 'Paris',
    'Belgium' => 'Brussels',
    'Morocco' => 'Rabat',
    'Barbados' => 'Bridgetown',
    'Peru' => 'Lima',
    'Bolivia' => 'La Paz',
    'Brazil' => 'Brasilia'
}

puts select_b_countries(countries_and_capitals) == {
    'Belgium'=>'Brussels',
    'Barbados'=>'Bridgetown',
    'Bolivia'=>'La Paz',
    'Brazil'=>'Brasilia'
}

p select_b_countries(countries_and_capitals)
