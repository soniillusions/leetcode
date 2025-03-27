# frozen_string_literal: true

def count_k_difference(nums, k)
  n = 0
  left = n
  right = n + 1

  result = 0

  while n < nums.size - 1
    if right > nums.size - 1
      n += 1
      left = n
      right = left + 1
      if right > nums.size - 1
        break
      end
    end

    result += 1 if left < right && (nums[left] - nums[right]).abs == k

    right += 1
  end

  result
end

nums = [1, 2, 2, 1]
k = 1
puts count_k_difference(nums, k)
