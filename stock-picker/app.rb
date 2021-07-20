require 'pry-byebug'

# This method returns the prices, not the indices
def stock_picker_return_prices(stock_prices)

  result = Array.new(2,0)
  best = 0
  
  stock_prices.combination(2) do|v|
  
    result[0], result[1] = v[0], v[1] if (v[1] - v[0]) > (result[1] - result[0])
  end
  result
end

a = [17,3,6,9,15,8,6,1,10]
#print stock_picker_return_prices(a)


# Example
# stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4] # for a profit of $15 - $3 == $12
def stock_picker(stock_prices)

  best_buy_price = 0
  best_sell_price = 0
  highest_profit = 0
  #binding.pry
  stock_prices.each do |price|
    current_day = stock_prices.index(price)

    other_prices = stock_prices[current_day + 1..-1]
    other_prices.each do |other_price|
      
      profit_calc = other_price - price
      other_days = other_prices.index(other_price) + 1

      if profit_calc > highest_profit
        highest_profit = profit_calc
        best_buy_price = current_day
        best_sell_price = best_buy_price + other_days
      end
    end

  end

  return [best_buy_price, best_sell_price]

end

print stock_picker(a)