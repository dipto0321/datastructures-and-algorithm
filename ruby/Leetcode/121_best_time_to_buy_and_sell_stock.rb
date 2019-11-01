# frozen_string_literal: true

def max_profit(prices)
  max_profit = 0
  min_price = prices[0]
  prices.each do |price|
    if price < min_price
      min_price = price
    elsif (price - min_price) > max_profit
      max_profit = (price - min_price)
    end
  end
  max_profit
end
