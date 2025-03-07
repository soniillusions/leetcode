def count_k_difference(nums, k)
  memo = {}

  n = nums.size - 1

  result = 0

  nums.each_with_index do |el|
    diff = (el - k).abs

    memo[diff] = el
  end

  return memo.keys.inspect
end

nums = [58,41,59,38,24,61,16,2,76,66,40,87,4,41,42,100,50,93,48,56,80,2,22,77,49,37,8,58,82,79,54,29,87,67,71,65,50,46,11,52,7,9,19,54,38,98,25,37,38,44]
k = 73
puts count_k_difference(nums, k)