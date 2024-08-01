system 'clear'
# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

print 'What is the bill amount? '
bill_amnt = gets.to_f

print 'What is the tip percentage? '
tip_percent = (gets.to_f / 100)

total_tip = (bill_amnt * tip_percent).round(2)

puts "\nThe tip is $#{sprintf('%.2f', total_tip)}"
puts "The total is $#{sprintf('%.2f', (bill_amnt + total_tip))}"
