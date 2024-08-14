system 'clear'
# In the previous exercise, you developed a method that converts simple numeric strings to Integers. In this exercise, you're going to extend that method to work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. You may, however, use the string_to_integer method from the previous lesson.

DIGITS = { '1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5,
           '6'=>6, '7'=>7, '8'=>8, '9'=>9, '0'=>0 }

def string_to_integer(numeric_str)
  num_arr = numeric_str.chars.map { |c| DIGITS[c] }

  value = 0
  num_arr.each { |digit| value = 10 * value + digit }
  value
end

# original solution - overly complicated - overthought #
=begin
def string_to_signed_integer(str)
  str_arr = str.chars
  sign = %w(+ -).include?(str_arr.first) ? str_arr.shift : ''

  sign == '-' ? string_to_integer(str_arr.join) * -1 \
              : string_to_integer(str_arr.join)
end
=end

# cleaner solution from LS #
=begin
def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end

p string_to_signed_integer('+123')
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
=end

#-- a further exploration solution with too much ruby sugar --#
=begin
def string_to_signed_integer(str)
  chars = str.chars
  sign = %w(+ -).include?(str[0]) ? chars.shift : ''

  string_to_integer(chars.join) * (sign == '-' ? -1 : 1)
end
=end

# my solution for further exploration #
=begin
def string_to_signed_integer(str)
  has_sign = !DIGITS.has_key?(str[0])
  updated_str = has_sign ? str[1..-1] : str

  number = string_to_integer(updated_str)
  (str[0] == '-') ? -number : number
end
=end

#-- best solution for further exploration via LS student --#
def string_to_signed_integer(str)
  number = string_to_integer(str.delete('+-'))
  (str[0] == '-') ? -number : number
end

p string_to_signed_integer('123')
puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100
