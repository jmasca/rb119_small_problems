system 'clear'
# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Note: I did not include any error checking. #

print 'Please enter an integer greater than 0: '
user_num = gets.to_i

print "Enter 's' to compute the sum, 'p' to compute the product: "
operation = gets.downcase.chomp

if operation == 's'
  operation = 'sum'
  total = (1..user_num).inject(:+)
else
  operation = 'product'
  total = (1..user_num).inject(:*)
end

puts "The #{operation} of the integers between 1 and #{user_num} is #{total}."
