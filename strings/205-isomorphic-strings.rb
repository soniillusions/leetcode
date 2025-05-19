def is_isomorphic(s, t)
  memo = {}

  s.chars.each_with_index do |el, i|
    memo[el] ? next : memo[el] = t[i]
  end

  s.chars.each_with_index { |el, i| s[i] = memo[el] }

  return false if memo.values != memo.values.uniq

  s == t
end

s = "badc"
t = "baba"
puts is_isomorphic(s, t)