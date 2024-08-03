system 'clear'
# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

print 'Enter the first number: '
first_num = gets.to_i

print 'Enter the second number: '
sec_num = gets.to_i

puts "=> #{first_num} + #{sec_num} = #{first_num + sec_num}"
puts "=> #{first_num} - #{sec_num} = #{first_num - sec_num}"
puts "=> #{first_num} * #{sec_num} = #{first_num * sec_num}"
puts "=> #{first_num} / #{sec_num} = #{first_num / sec_num}"
puts "=> #{first_num} % #{sec_num} = #{first_num % sec_num}"
puts "=> #{first_num} ** #{sec_num} = #{first_num ** sec_num}"
