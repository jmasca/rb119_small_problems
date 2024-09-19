system 'clear'
# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

# original solution #
=begin
def crunch(str)
  return '' if str.empty?

  clean_str = str[0]
  str.each_char do |char|
    next if clean_str[-1] == char
    clean_str << char
  end
  clean_str
end
=end

# refactored solution #
def crunch(str)
  clean_str = ''
  str.each_char { |char| clean_str << char unless clean_str[-1] == char }
  clean_str
end

=begin
# regex solution #
def crunch(str)
  str.gsub(/(.)\1+/, '\1')
end
=end

p crunch('ii lloovvee yyoouu!!')
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
