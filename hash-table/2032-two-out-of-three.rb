def two_out_of_three(nums1, nums2, nums3)
  el_1 = nums1 & nums2
  el_2 = nums2 & nums3
  el_3 = nums1 & nums3

  (el_1 + el_2 + el_3).uniq
end