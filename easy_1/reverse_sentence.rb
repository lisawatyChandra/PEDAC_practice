# INPUT: String
# OUTPUT: String

def reverse_sentence(string)
    string.split.reverse.join(' ')
end

puts reverse_sentence('Hello World')