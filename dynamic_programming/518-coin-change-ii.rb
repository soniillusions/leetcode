# Решение через рекурсию - довольно долгое
# не оптимальное

def change(amount, coins)
  memo = {}

  dp = lambda do |i, n|
    return 0 if n < 0
    return 1 if n == 0
    return 0 if i >= coins.size

    key = [i, n]
    return memo[key] if memo.key?(key)

    memo[key] = dp.call(i, n - coins[i]) + dp.call(i + 1, n)
  end

  dp.call(0, amount)
end

amount = 500
coins = [3,5,7,8,9,10,11]
p change(amount, coins)