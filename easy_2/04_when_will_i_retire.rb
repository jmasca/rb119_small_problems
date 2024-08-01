system 'clear'
# Build a program that displays when the user will retire and how many years she has to work till retirement.

print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
years_until_retiring = retirement_age - current_age
retirement_year = current_year + years_until_retiring

puts "\nIt's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_until_retiring} years of work to go!"
