system 'clear'
# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

# original solution #
=begin
SPACE = ' '

print 'Please write a word or multiple words: '
user_input = gets.chomp

char_count = 0
user_input.each_char { |char| char_count += 1 unless char == SPACE }

puts "There are #{char_count} characters in \"#{user_input}\"."
=end

# cleaner solution #
print 'Please write a word or multiple words: '
user_input = gets.chomp

char_count = user_input.delete(' ').size

puts "There are #{char_count} characters in \"#{user_input}\"."
