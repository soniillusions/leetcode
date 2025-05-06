def rotate(matrix)
  n = matrix.size - 1

  (0..n).each do |i|
    (i+1..n).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end

  matrix.each do |el|
    el.reverse!
  end
end

matrix = [[1,2,3],[4,5,6],[7,8,9]]
puts rotate(matrix).inspect

