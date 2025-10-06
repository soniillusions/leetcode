def max_bottles_drunk(num_bottles, num_exchange)
  empty = 0
  drink = 0

  while num_bottles  > 0
    while num_bottles > 0
      num_bottles -= 1
      empty += 1
      drink += 1
    end

    empty = empty - num_exchange
    if empty.negative?
      empty = 0
      num_exchange += 1
    else
      num_exchange += 1
      num_bottles += 1
    end
  end
  drink
end