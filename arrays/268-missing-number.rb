def missing_number(nums)
  ((0..nums.size).to_a - nums)[0]
end

nums = [3,0,1]
p missing_number(nums)