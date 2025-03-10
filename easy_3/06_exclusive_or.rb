system 'clear'
# The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

# original solution #
=begin
def xor?(exp1, exp2)
  return false if ((exp1 == nil) && (exp2 == nil))
  (exp1 && exp2 || (exp1 == false) && (exp2 == false)) ? false : true
end
=end

# cleaner solution #
=begin
def xor?(exp1, exp2)
  return true if exp1 && !exp2
  return true if exp2 && !exp1
  false
end
=end

# cleanest solution #
def xor?(exp1, exp2)
  !!((exp1 && !exp2) || (exp2 && !exp1))  # !! forces a boolean return value
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?('abc', nil) == true
p xor?(nil, 'abc') == true
p xor?('abc', 'abc') == false
p xor?(nil, nil) == false
