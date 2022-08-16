# Modify the `word_size` method from the previous exercise
# to exclude non-letters when determining word size.
# For instance, the length of "it's" is 3, not 4.

def word_sizes(string)
    letter_counter = Hash.new(0)

    string.split.each do |word|
        # word.gsub!(/[^A-z]/, '')
        # word_size = word.size
        # letter_counter[word_size] += 1

        clean_word = word.delete("^A-z")
        letter_counter[clean_word.size] += 1
    end

    letter_counter
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}