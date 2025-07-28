def relative_sort_array(arr1, arr2)
  memo = {}
  arr2.each_with_index { |el, i| memo[el] = i }

  sorted = Array.new(arr2.size) { Array.new }
  other = []
  arr1.each { |el| memo[el].nil? ? other << el : sorted[memo[el]] << el }

  sorted.reduce(&:+) + other.sort
end

arr1 = [28,6,22,8,44,17]
arr2 = [22,28,8,6]
puts relative_sort_array(arr1, arr2).inspect