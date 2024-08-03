system 'clear'
# Write a method that returns true if its integer argument is palindromic, false otherwise. A palindromic number reads the same forwards and backwards.

def palindromic_number?(num)
  num == num.digits.join.to_i
end

puts palindromic_number?(123321)
puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

=begin
# solution using the `palindrome?` method #

def palindrome?(str)
  str == str.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end
=end

# note: leading zero(s) is octal format in Ruby and will not work properly #
