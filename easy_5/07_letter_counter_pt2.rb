system 'clear'
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# original solution #
def word_sizes(str)
  counts = Hash.new(0)
  str.split.each { |word| counts[word.delete('^a-zA-Z').length] += 1 }
  counts
end

# LS solution for readability - same as above, but with steps elaborated #
=begin
def word_sizes(str)
  counts = Hash.new(0)
  str.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
=end

p word_sizes("this'll Do")
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == {3 => 5, 6 => 3}
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
