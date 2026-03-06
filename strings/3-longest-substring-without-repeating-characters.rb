def length_of_longest_substring(s)
  max_length = 0

  (0...s.length).each do |start|
    seen = {}
    current_length = 0

    (start...s.length).each do |i|
      char = s[i]

      if seen[char]
        break
      end

      seen[char] = true
      current_length += 1
    end

    max_length = [max_length, current_length].max
  end

  max_length
end

s = "pwwkew"
p length_of_longest_substring(s)