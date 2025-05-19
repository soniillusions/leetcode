def reverse_words(s)
  result = ''
  s.split(' ').map(&:chomp).reverse.each{ |el| result << el + ' '}
  result.strip
end

s = "the sky is blue"
reverse_words(s)