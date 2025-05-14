require 'set'

def is_happy(n)
  memo = Set.new

  while n != 1
    return false if memo.include?(n)
    memo.add(n)

    n = n.to_s.chars.map(&:to_i).map{ |el| el**2 }.sum
  end
  return true
end

n = 59
puts is_happy(n)