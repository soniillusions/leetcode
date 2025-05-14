def divide_array(nums)
  memo = {}

  nums.each do |el|
    memo[el] ? memo[el] += 1 : memo[el] = 1
  end

  pairs = {}

  nums.uniq.each do |el|
    if memo[el] > 1
      pairs[el] = memo[el] / 2
    else
      pairs[el] = 0
    end
  end

  pairs.values.sum == nums.size / 2
end