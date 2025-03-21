def find_words(words)
  rows = ['qwertyuiop', 'asdfghjkl', 'zxcvbnm']
  result = []
  rows.each do |row|
      words.each do |word|
          marker = 0
          word.downcase.split('').each do |el|
              if row.include?(el)
                  marker = 1
              else
                  marker = 0
                  break
              end
          end

          if marker == 1
              result << word
          end
      end
  end

  return result
end