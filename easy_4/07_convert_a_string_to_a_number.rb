system 'clear'
# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# original solution #
=begin
DIGITS = { '1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5,
           '6'=>6, '7'=>7, '8'=>8, '9'=>9, '0'=>0 }

def string_to_integer(numeric_str)
  total = 0
  place = 1

  num_arr = numeric_str.chars.map { |c| DIGITS[c] }

  num_arr.reverse.each do |n|
    n *= place
    total += n
    place *= 10
  end
  total
end
=end

# solution from LS using more efficient math #
DIGITS = { '1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5,
           '6'=>6, '7'=>7, '8'=>8, '9'=>9, '0'=>0 }

def string_to_integer(numeric_str)
  num_arr = numeric_str.chars.map { |c| DIGITS[c] }

  value = 0
  num_arr.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('234')
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
