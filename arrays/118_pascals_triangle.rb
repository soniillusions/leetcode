def generate(num_rows)
  row = [1]
  result = [[1]]

  1.upto(num_rows - 1) do |i|
    new_row = [1]

    i.times do |x|
      unless row[x + 1].nil?
        new_row << row[x] + row[x + 1]
      else
        new_row << row[x]
      end
    end

    row = new_row
    result << row
  end

  puts result.inspect
end
  
  # создаем изначальную строку
  
  # потом в цикле создаем след новую строку
  
  # и во вложенном цикле пристыковываем к этой строке (массиву) след значение из суммы значений изначальной строки (текущего и след по индексам)
  
  # если след значение nil то просто прибавляем строку
  
  generate(5)