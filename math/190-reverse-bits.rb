def reverse_bits(n)
  result = ''

  bit = n.to_s(2)

  p bit

  bit.to_i(2)
end

n = 43261596
p reverse_bits(n)