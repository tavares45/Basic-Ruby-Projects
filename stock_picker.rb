stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  best_buy_day = 0
  max_profit = 0
  best_days = [0, 0]

  prices.each_with_index do |current_price, current_day|
    best_buy_day = current_day if current_price < prices[best_buy_day]

    potential_profit = current_price - prices[best_buy_day]

    if potential_profit > max_profit
      max_profit = potential_profit
      best_days = [best_buy_day, current_day]
    end
  end

  best_days
end

puts "Best days are: #{stock_picker(stock_prices)}"
