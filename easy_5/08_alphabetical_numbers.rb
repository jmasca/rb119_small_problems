system 'clear'
# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# original solution #
NUMS_IN_ENGLISH = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(num_arr)
  num_arr.sort_by { |num| NUMS_IN_ENGLISH[num] }
end

# further exploration #
=begin
def alphabetic_number_sort(num_arr)
  num_arr.sort { |a, b| NUMS_IN_ENGLISH[a] <=> NUMS_IN_ENGLISH[b] }
end
=end

p alphabetic_number_sort([0, 2, 3])
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
