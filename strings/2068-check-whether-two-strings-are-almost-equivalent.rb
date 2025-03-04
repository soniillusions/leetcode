def check_almost_equivalent(word1, word2)
  w1 = word1.split('')
  w2 = word2.split('')
  w3 = (word1 + word2).split('')

  h1 = {}
  h2 = {}
  
  memo = []

  w3.each do |el|
    if memo.include?(el)
      next
    else
      memo << el
    end
  end

  w1.each do |el|
    h1[el] = 0
  end

  w1.each do |el|
    if h1.keys.include?(el)
      h1[el] += 1
    end
  end

  w2.each do |el|
    h2[el] = 0
  end

  w2.each do |el|
    if h2.keys.include?(el)
      h2[el] += 1
    end
  end

  memo.each do |el|
    first = h1[el] || 0
    second = h2[el] || 0

    diff = (first - second).abs

    if diff > 3
      return false
    end
  end

  return true
end

word1 = "aaaabj"
word2 = "zzzzaa"
puts check_almost_equivalent(word1, word2)