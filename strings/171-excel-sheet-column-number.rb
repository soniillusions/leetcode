def title_to_number(column_title)
  memo = {}
  ('A'..'Z').to_a.each_with_index { |letter, i| memo[letter] = i + 1 }

  result = 0
  power = column_title.length - 1

  column_title.chars.each do |char|
    power > 0 ? result += (26 ** power) * memo[char] : result += memo[char]
    power -= 1
  end

  p result
end

column_title = "ZY"
title_to_number(column_title)
