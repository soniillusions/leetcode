def majority_element(nums)
  return nums[0] if nums.size == 1
  memo = {}
  half = nums.size / 2

  nums.each do |el|
    if memo[el]
      memo[el] += 1
      if memo[el] > half
        return el
      end
    else
      memo[el] = 1
    end
  end
end


nums = [1, 34, 34, 34, 34, 34, 34, 2, 34, 343, 4, 34, 34, 56, 45, 23, 34, 23, 34, 65, 4]
puts majority_element(nums)