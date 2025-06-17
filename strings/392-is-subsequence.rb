# frozen_string_literal: true

def is_subsequence(s, t)
  n = 0
  result = ''

  s.chars.each do |char|
    (n..t.size - 1).each do |j|
      next unless t[j] == char

      result += char
      n = j + 1
      break
    end
  end
  return true if result == s
  return false
end

s = 'abc'
t = 'ahbgdc'
puts is_subsequence(s, t)
