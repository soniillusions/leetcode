def reverse(x)
  min = -2**31
  max = 2**31 - 1

  sign = x < 0 ? -1 : 1
  reverse = x.abs.to_s.reverse.to_i
  result = sign * reverse
  if result > max || result < min
    0
  else
    result
  end
end