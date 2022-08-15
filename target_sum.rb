# INPUT: An integer (the target number)  
       # an array of integers (the set of factors)
# OUTPUT: A single integer (sum of multiples)

#1 Restate the problem
#2 Understand the examples and test cases
#3 Formulate the goal

# PROBLEM: Suppose you have an arbitraty natural number 
# (the target) and a set of one or more additional natural
# numbers (the factors). Write a program that computes the 
# sum of all numbers from 1 up to 
# the target number that are also multiples of one of the 
# factors.

# You can use a mental model to fully and accurately 
# capture the requirements
#
# MENTAL MODEL #1: Determine a list of all multiples of a
# set of factors up to a target value, then filter the list
# of multiples to the unique values. Finally, compute and
# return the sum of the unique multiples.
#
# MENTAL MODEL #2: Incrementally build a list of numbers 
# that are multiples of a set of one or more factors. Add 
# a multiple to the list only if it is not yet on the list.
# Finally, compute and return the sum of the numbers on
# the list.

# You should come up with examples that validate your
# understanding of the problem and confirm that you are
# working in the right direction.
# The confirmation will typically come from a person or
# documentation of a process: we can ask the person to 
# confirm the output given the input, or we can follow
# the process to check the output given the input.
# Our examples will be in the form of tests that show
# the expected outputs given certain inputs.
#
# EXAMPLES/TEST CASES
# sum_of_multiples(20, [3, 5]) == 78 # this particular
# example shows that if a number is a multiple of
# one or more factors in the set of factors, it
# should be counted only once, in other words,
# we want a set of unique multiples when we
# combine all the multiples from the different
# factors.
#
# sum_of_multiples(20, [3]) == 63

# sum_of_multiples(20, [5]) == 30 # this particular
# example shows that if the target number itself is
# a multiple of one of the factors, it is not included
# in the set of multiples to be summed. This is an
# example of implicit requirement. This requirement
# is not explicitly stated in the problem description.
# It is to be derived from this example.
#
# sum_of_multiples(20, []) == 78 # this particular
# example shows that if the given set of factors
# is an empty list, then the factors default to
# the natural numbers 3 and 5.
#
# sum_of_multiples(1, []) == 0
# sum_of_multiples(20, [19]) == 19
#
# Note that we derive our examples from our rules. 
# Those are typically an excellent place to find 
# test cases.
#
# In addition to test cases based on our rules, we 
# should also provide test cases that handle any
# edge cases we can find. Edge cases are inputs
# at the "edges" of the problem description that
# may be mishandled if we aren't careful.
# When working with collections, it's normally a
# good idea to find test cases that deal with
# zero, one or multiple elements in the collection.
# Also, problems that involve iterating over numbers
# have edge cases at one or both ends of the range.
# If you are not careful, you may get incorrect
# answers at these edges. Typical edge cases can 
# involve working with negative numbers, the
# number zero, or extremely high values (if
# performance is a requirement).

# GOAL: Given a target number and a set of numbers,
# collect the multiples of each number in the given
# set of numbers, up to but not including the
# target number. Then combine all those multiples
# into one set containing only unique multiples.
# Then fold all multiples into one sum.

# With our test cases ready, the next thing to do
# is to determine what data structures we will
# work with to convert the input to the output.
# The chief considerations here are our intended
# programming language and our mental model.
#
# Using either of our mental models, we need to 
# collect the values that are multiples of our
# factors, and then add them up. An array seems
# like a good fit for this collection of multiples. 
# The only difference between our models lies in 
# how and when we filter those numbers.
#
# DATA STRUCTURE
# 

# In the algorithm step, if you have a mental model,
# you can start there. Otherwise, start with the
# 'Data Structure' step and think of how you would
# build and manipulate it to get the output. For
# instance, if it's an array, you'd probably focus
# on constructing or iterating over a collection.
#
# Our chief objective here is to determine a series
# of instructions that will transform the input
# to the desired output. The challenge is to get
# the right level of detail; we want something that
# we can readily convert to code without actually
# writing code.
#
# The reason you don't want it written at the 
# programming language level is that you will
# lose flexibility during imlementation. 
#
# Programming languages often provide several ways
# to achieve a given result, but each of those 
# approaches can affect other parts of the program.
#
# If you make an implementation choice too soon by
# making it part of your algorithm, then later 
# discover you should have chosen something else, 
# you may need to go back and modify both the code 
# and the algorithm. If you don't address the 
# changes at both levels, you may encounter the 
# following pitfalls: [1] missed requirements, 
# [2] unforeseen edge cases, [3] hard to understand
# code, [4] code that's difficult to maintain.
#
# That said, it is not uncommon to change an 
# algorithm once coding starts; don't feel
# constrained to stick with what you've
# initially written. In fact, two individuals
# working on the same problem will often come
# up with different algorithms, especially if
# each individual has formulated different mental
# models.
#
# ALGORITHM
# MENTAL MODEL #1
# - Create an empty array called `multiples` that
#   will contain the list of multiples, `multiples = []`
# - Check whether the list of factors is empty. If
#   there are no factors, set the list to `[3, 5]`, that is,
#   `factors = [3, 5]`
# - For every `factor` in the `factors list`:
#   - set the `current_multiple` to `factor` to keep track
#     of the multiples of `factor`; e.g.,
#     - `current_multiple = 3`
#     - `current_multiple = 5`
#   - While `current_multiple` < `target`
#     - Append the `current_multiple` to `multiples`, e.g.,
#       - `multiples = [3]`
#       - `multiples = [3, 6]`
#       - `multiples = [3, 6, 9]`
#       - ...
#       - `multiples = [2, 6, 9, 12, 15, 18, 5, 10, 15]`
#     - Add `factor` to `current_multiple`
#       - `current_multiple = 6`
#       - `current_multiple = 9`
#       - `current_multiple = 12`
#       - ...
#       - `current_multiple = 18`
#       - `current_multiple = 5`
#       - ...
#       - `current_multiple = 15`
#     - Filter duplicate numbers from `multiples`, e.g.,
#       - `multiples = [3, 6, 9, 12, 15, 18, 5, 10]`
#     - Compute and return the sum of the numbers in `multiples`,
#       - `78`
#
# MENTAL MODEL #2
# -
#
# PER MY GOAL DESCRIPTION:
# - initialize a local variable and assign to an
#   empty array, name it `multiples`
# - check if the given set of factors is an empty
#   list, if it is, initialize a local variable
#   and assign it to `[3, 5]`, name it `factors`
# - iterate over each number in the set of factors
# - for current factor, find its multiples and add
#   them to `multiples`, stop when we reach a 
#   multiple that is >= the target number (wish:
#   HELPER METHOD #1)
# - once we are done iterating through the set of
#   factors, filter the set of multiples in `multiples`
#   so that the set only contains unique multiples.
# - sum up all the numbers in the set of multiples.

# Don't be alarmed if, after doing all the steps above,
# you still have to circle back to your algorithm. That
# can and will happen often.
#
# After all, you're human, and you may have missed
# something. PEDAC, however, aims to minimize those
# mistakes, so you don't miss major requirements
# and even if you are circling back to previous steps,
# it's mostly for fine-tuning the approach.
#
# CODING WITH INTENT
def sum_of_multiples(target, factors)
  multiples = []
  factors = [3, 5] if factors.size == 0

  factors.each do |factor|
    multiples = collect_multiples_up_to_target(multiples, factor, target)
  end

  multiples.reduce(0, :+)
end

def collect_multiples_up_to_target(multiples, factor, target)
  current_multiple = factor

  loop do
    break if current_multiple >= target

    multiples << current_multiple if !multiples.include?(current_multiple)
    current_multiple += factor
  end

  multiples
end

puts sum_of_multiples(20, [3, 5])  # returns 78
puts sum_of_multiples(20, [3])     # returns 63
puts sum_of_multiples(20, [5])     # returns 30
puts sum_of_multiples(20, [])      # returns 78
puts sum_of_multiples(1, [])       # returns 0
puts sum_of_multiples(20, [19])    # returns 19
