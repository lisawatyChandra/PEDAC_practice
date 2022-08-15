# INPUT: Hash
# OUTPUT: Hash

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: You are given a hash whose items are keyed by
# a produce name. Each produce name is associated to either 
# `'Fruit` or `'Vegetable'`. You are tasked with selecting
# the items whose value is `'Fruit'`. When found, pick that
# item out of the input hash, add that item to a new hash. 
# Accumulate all occurences of such items in a new hash.

# EXAMPLES / TEST CASES:
# produce = {
    # 'apple' => 'Fruit',
    # 'carrot' => 'Vegetable',
    # 'pear' => 'Fruit',
    # 'broccoli' => 'Vegetable'
# }
# select_fruit(produce) == {"apple"=>"Fruit", "pear"=>"Fruit"}

# GOAL: return a new hash containing only items whose
# values are `'Fruit'`, selected from input hash

# DATA STRUCTURE:
# Hash -> Hash

# ALGORITHM:
# - Find all items from input hash whose value is `'Fruit'`
# - When found, add item to a new hash `selected_fruits`
# - Return new hash

# CODING WITH INTENT:
def select_fruit(produce)
    selected_fruits = {}
    hash_keys = produce.keys
    counter = 0

    loop do
        break if counter == hash_keys.size
        # this has to be at the top in case input hash
        # is empty

        current_key = hash_keys[counter]
        current_value = produce[current_key]

        if produce[current_key] == 'Fruit'
           selected_fruits[current_key] = current_value
        end

        counter += 1
        # break if counter == hash_keys.size #
        # placing break statement at the bottom
        # will cause infinite loop in this case
        # because the loop will always execute at
        # least once, and in the body of the first
        # iteration just before we reach the exit
        # condition, we incremented the
        # counter from 0 to 1 in the first iteration
        # of the loop, thus counter will never equal
        # 0 after the first iteration, and if the
        # input hash is empty, then `hash_keys.size`
        # is `0`, but counter == 1 != 0 == hash_keys.size
        # thus, exit condition will never be met if
        # we place the exit condition after the loop
        # has iterated once
    end

    selected_fruits
end

produce_1 = {
    'apple' => 'Fruit',
    'carrot' => 'Vegetable',
    'pear' => 'Fruit',
    'broccoli' => 'Vegetable'
}

produce_2 = {
    'carrot' => 'Vegetable',
    'broccoli' => 'Vegetable'
}

produce_3 = {}

puts select_fruit(produce_1) == {"apple"=>"Fruit", "pear"=>"Fruit"}
puts select_fruit(produce_2) == {}
puts select_fruit(produce_3) == {}
