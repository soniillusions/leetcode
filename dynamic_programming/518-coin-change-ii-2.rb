def change(amount, coins)
  dp = Array.new(amount + 1, 0)
  dp[0] = 1

  coins.each do |coin|
    (coin..amount).each do |n|
      dp[n] += dp[n - coin]
    end
  end

  dp[amount]
end

amount = 500
coins = [3,5,7,8,9,10,11]
p change(amount, coins)