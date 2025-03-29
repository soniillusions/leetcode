def contains_nearby_duplicate(nums, k)
  memo = {}

  nums.each_with_index do |el, i|
      if memo[el]
          flag = (memo[el] - i).abs <= k
          if flag == true
              return true
          end
          memo[el] = i
      else
          memo[el] = i
      end
  end
  return false
end