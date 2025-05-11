def combination_sum2(candidates, target)
    memo = []

    candidates.each do |el|
      if target - el > 0
        memo << el
      end
    end

    result = []

    puts result.inspect
end

candidates = [10,1,2,7,6,1,5]
target = 8
combination_sum2(candidates, target)