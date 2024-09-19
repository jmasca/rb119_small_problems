system 'clear'
# Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

# original solution #
def ascii_value(ascii_str)
  ascii_str.chars.map { |c| c.ord }.sum
end

# solution broken down so it's more readable #
=begin
def ascii_value(ascii_str)
  sum = 0
  ascii_str.each_char { |c| sum += c.ord }
  sum
end
=end

p ascii_value('love')
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
