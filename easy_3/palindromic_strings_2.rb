def palindrome?(string)
    string == string.reverse
end

def real_palindrome?(string)
    string = string.gsub(/[^A-z0-9]/, '').downcase

    # or another approach is
    # string = string.downcase.delete('^a-z0-9')
    palindrome?(string)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true
puts real_palindrome?("Madam, I'm Adam") == true
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false