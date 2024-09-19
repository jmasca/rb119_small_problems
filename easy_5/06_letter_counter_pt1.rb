system 'clear'
# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# original solution #
=begin
def word_sizes(str)
  counts = {}

  str.split.each do |word|
    if counts.key?(word.size)
      counts[word.size] += 1
    else
      counts[word.size] = 1
    end
  end
  counts
end
=end

# refactored solution #
=begin
def word_sizes(str)
  counts = {}
  str.split.each do |word|
    counts[word.size] = counts.key?(word.size) ? (counts[word.size] + 1) : 1
  end
  counts
end
=end

# LS solution #
# note: Hash.new(0) forces non-existing keys to return `0` instead of `nil`
def word_sizes(str)
  counts = Hash.new(0)
  str.split.each { |word| counts[word.size] += 1 }
  counts
end

strng = "the blue dog benji"
p word_sizes(strng) == { 3 => 2, 4 => 1, 5 => 1 }

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
