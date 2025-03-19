def is_palindrome(s)
  string = s.downcase

  letters = ('a'..'z')
  numbers = ('0'..'9')

  chr = letters.to_a + numbers.to_a

  new_str = ''

  string.split('').each do |el|
      if chr.include?(el)
          new_str << el
      end
  end

  if new_str == ''
    return true
  end

  reverse_str = ''
  n = new_str.size

  -1.downto(-n).each do |i|
    reverse_str << new_str[i]
  end

  new_str == reverse_str
end

s = "A man, a plan, a canal: Panama"

puts is_palindrome(s)