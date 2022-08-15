# INPUT: String
# OUTPUT: String

def reverse_words(string)
    string.split.map do |word|
        word.reverse! if word.size >= 5
        word
    end.join(' ')
end

puts reverse_words("Walk around the block")