system 'clear'
# Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

=begin
# original solution (overthought it) #
def uppercase?(str)
  str.count('A-Z') == str.delete('^a-zA-Z').size
end
=end

# cleaner solution #

def uppercase?(str)
  str == str.upcase
end

puts uppercase?('V')
puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == true
