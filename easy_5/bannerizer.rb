# INPUT: String
# OUTPUT: String

# PROBLEM: Write a method that will take a short line
# of text, and print it within a box.

# EXAMPLES/TEST CASES
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# DATA STRUCTURE
# String -> String (output, not return value)

# ALGORITHM
# - We will use String interpolation to insert the 
#   number of spaces or dashes required to make the
#   the box fit the input string.

# CODING WITH INTENT
# def print_in_box(string)
#     horizontal_rule = "+#{'-' * (string.size + 2)}+"
#     empty_line = "|#{' ' * (string.size + 2)}|"

#     puts horizontal_rule
#     puts empty_line
#     puts "| #{string} |"
#     puts empty_line
#     puts horizontal_rule
# end

# print_in_box('To boldly go where no one has gone before.')
# print_in_box('')

# FURTHER EXPLORATION
# Modify this method so it will truncate the message if
# the input string is too wide to fit in a standard terminal
# window (80 columns, including the sides of the box).
# For a real challenge, try word wrapping very long messages 
# so they appear on multiple lines, but still within a box.

# the following solution is Jon David Fortune's, with some
# correction to prevent `nil` output being printed as a
# blank line after end of message.
LINE_LIMIT = 76

def print_in_box(string)
    spacer = string.size > LINE_LIMIT ? LINE_LIMIT : string.size

    horizontal_rule = "+#{'-' * (spacer + 10)}+"
    empty_line = "|#{' ' * (spacer + 10)}|"

    lines, leftover = string.size.divmod(LINE_LIMIT)
    count = 0

    puts horizontal_rule
    puts empty_line
    loop do
        break if lines < 0
        if lines >= 1
            puts "|     #{string[count, LINE_LIMIT]}     |"
        else
            puts "|     #{string[count, leftover]}#{' ' * (LINE_LIMIT - leftover)}     |"
        end
        count += LINE_LIMIT
        lines -= 1
    end
    puts empty_line
    puts horizontal_rule
end

# def puts_string_line(string)
    
    
# end

print_in_box('Joan Didion, whose mordant dispatches on California culture and the chaos of the 1960s established her as a leading exponent of the New Journalism, and whose novels “Play It as It Lays” and “A Book of Common Prayer” proclaimed the arrival of a tough, terse, distinctive voice in American fiction, died on Thursday at her home in Manhattan. She was 87.')