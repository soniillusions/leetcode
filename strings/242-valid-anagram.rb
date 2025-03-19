def is_anagram(s, t)
  if s.downcase != s || t.downcase != t
    return false
  end

  memo1 = {}
  memo2 = {}

  s.size.times do |i|
    if memo1[s[i]]
      memo1[s[i]] += 1
    else
      memo1[s[i]] = 1
    end
  end
  
  t.size.times do |i|
    if memo2[t[i]]
      memo2[t[i]] += 1
    else
      memo2[t[i]] = 1
    end
  end

  return memo1 == memo2
end

s = 'asdfsdfsdfsdfsdfsdfsdfsdfsdfffssfsfsdfsfsfsdfsdf'
t = 'asdfsdfsdfsdfsdfsdfsdfsdfsdfsfsdfsfsdfsfsfsdfsdf'
puts is_anagram(s, t)