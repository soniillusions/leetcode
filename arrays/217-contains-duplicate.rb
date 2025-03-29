def contains_duplicate(nums)
  memo = {}

  nums.each do |el|
    if memo[el]
      return true
    else
      memo[el] = 1
    end
  end

  return false
end