def intersect(nums1, nums2)
  result = []
  if nums1.size < nums2.size
    nil
  else
    swap = nums1
    nums1, nums2 = nums2, swap
  end

  nums1_keys = {}

  nums1.each do |el|
    nums1_keys[el] ? nums1_keys[el] += 1 : nums1_keys[el] = 1
  end

  result_keys = {}

  nums2.each do |el|
    next if result_keys[el] == nums1_keys[el]

    result_keys[el] ? result_keys[el] += 1 : result_keys[el] = 1
      
    nums1.include?(el) ? result << el : next 
  end

  result
end

nums1 = [4,9,5]
nums2 = [9,4,9,8,4]
intersect(nums1, nums2)