def get_lucky(s, k)
  memo = {}

  ('a'..'z').each_with_index do |el, i|
    i += 1

    memo[el] = i
  end

  string_arr = s.split('')

  string_arr.each_with_index do |el, i|
      string_arr[i] = memo[el]
  end

  string = string_arr.join('')

  k.times do
    @sum = 0

    string.split('').map { |el| @sum += el.to_i }

    string = @sum.to_s
  end

  return @sum
end