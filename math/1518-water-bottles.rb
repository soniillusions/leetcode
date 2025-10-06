def num_water_bottles(num_bottles, num_exchange)
  full = num_bottles
  empty = 0
  drink = 0

  while full > 0
    drink += full
    empty += full
    full = empty / num_exchange
    empty = empty % num_exchange
  end
  
  drink
end

num_bottles = 9
num_exchange = 3
p num_water_bottles(num_bottles, num_exchange)