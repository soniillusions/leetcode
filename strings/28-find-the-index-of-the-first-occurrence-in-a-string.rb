def str_str(haystack, needle)
  sub_size = needle.size - 1

  (0..(haystack.size - 1)).each do |i|
    if haystack[i..(i + sub_size)] == needle
      return i
    end
  end

  return -1
end

haystack = "mississippi"
needle = "issip"

puts str_str(haystack, needle)


