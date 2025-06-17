def max_count(m, n, ops)
  return m * n if ops.empty?

  min_row = m
  min_col = n

  ops.each do |op|
    min_row = [min_row, op[0]].min
    min_col = [min_col, op[1]].min
  end

  return min_row * min_col
end

m = 39999
n = 39999
ops = [[19999,19999]]

puts max_count(m, n, ops)