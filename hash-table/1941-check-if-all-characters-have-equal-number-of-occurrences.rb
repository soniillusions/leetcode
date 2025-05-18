def are_occurrences_equal(s)
  memo = {}
  s.chars.each { |chr| memo[chr] ? memo[chr] += 1 : memo[chr] = 1 }
  memo.values.uniq.size == 1
end