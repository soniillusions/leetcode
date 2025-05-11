def intersection(nums1, nums2)
  if nums1.size > nums2.size
      swap = nums1
      nums1, nums2 = nums2, swap
  end

  result = []

  nums2.each do |el|
      if nums1.include?(el) && !result.include?(el)
          result << el
      end
  end

  result
end