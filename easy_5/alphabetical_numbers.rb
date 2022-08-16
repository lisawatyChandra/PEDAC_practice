# INPUT: Array
# OUTPUT: Array

# PROBLEM: Write a method that takes an Array of Integers
# between 0 and 19, and returns an Array of those Integers
# sorted based on the English word for each number

# EXAMPLES/TEST CASES
# alphabetic_number_sort((0..19).to_a) == [
    # 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16,
    # 10, 13, 3, 12, 2, 0
# ]

# GOAL:

# MENTAL MODEL: Recall that sorting a string is done
# by comparing the strings character by character.

# DATA STRUCTURE

# ALGORITHM

# CODING WITH INTENT
NUM_TO_WORDS = {0=>'zero', 1=>'one', 2=>'two', 3=>'three',
  4=>'four', 5=>'five', 6=>'six', 7=>'seven', 8=>'eight',
  9=>'nine', 10=>'ten', 11=>'eleven', 12=>'twelve',
  13=>'thirteen', 14=>'fourteen', 15=>'fifteen',
  16=>'sixteen', 17=>'seventeen', 18=>'eighteen',
  19=>'nineteen'
}

# remember, when we need to create a collection
# of key:value pairs where the keys are natural numbers
# that is, the keys start from `0` and keeps increasing,
# it is easier to use an array

def alphabetic_number_sort(integers)
    integers.map do |number|
        NUM_TO_WORDS[number]
    end.sort.map do |num_word|
        NUM_TO_WORDS.key(num_word)
    end
end

puts alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]