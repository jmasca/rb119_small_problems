system 'clear'
# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

numbers = []

print 'Enter the first number: '
numbers << gets.to_i
print 'Enter the second number: '
numbers << gets.to_i
print 'Enter the third number: '
numbers << gets.to_i
print 'Enter the fourth number: '
numbers << gets.to_i
print 'Enter the fifth number: '
numbers << gets.to_i
print 'Enter the last number: '
last_number = gets.to_i

if numbers.include?(last_number)
  print "The number #{last_number} appears in #{numbers}."
else
  print "The number #{last_number} does not appear in #{numbers}."
end
