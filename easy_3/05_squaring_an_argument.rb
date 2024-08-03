system 'clear'
# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

puts square(5) == 25
puts square(-8) == 64

# FURTHER EXPLORATION #

# What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc. How would we go about doing so while still using the multiply method?

=begin
def power_to(num, n)
  result = num

  while n > 1
    result = multiply(result, num)
    n -= 1
  end
  result
end
=end

def power_to(num, n)
  result = 1
  n.times { result = multiply(result, num) }
  result
end

puts
puts power_to(5, 2)
puts power_to(5, 3)
puts power_to(5, 4)
puts power_to(5, 5)
