system 'clear'
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# original solution #
=begin
def running_total(arr)
  running_sum = 0
  arr.map { |n| running_sum += n }
end
=end

# solution using Enumerable#each_with_object #
=begin
def running_total(arr)
  running_sum = 0
  arr.each_with_object([]) { |n, sum_arr| sum_arr << (running_sum += n) }
end
=end

# clever solution using Enumerable#reduce #
def running_total(arr)
  sums = []
  arr.reduce(0) { |n1, n2| sums.push(n1 + n2).last }
  sums
end

p running_total([1, 2, 3, 4, 5])
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
