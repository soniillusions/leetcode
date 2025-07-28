def find_shortest_sub_array(nums)
  freq = nums.tally
  max_value = freq.values.max
  subs = freq.select { |_, v| v == max_value }.keys

  subs.map do |sub|
    nums.rindex(sub) - nums.index(sub) + 1
  end.min
end

nums = [1, 2, 2, 3, 1]
puts find_shortest_sub_array(nums)