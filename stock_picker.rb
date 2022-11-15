#Goal: To create a method that selects the best time to buy and sell using an array of daily prices 


def stock_pick (prices)
  most_profit = 0
  buy_day = ""
  sell_day = ""
    prices.each_with_index do |buy, buy_index|
      prices.each_with_index do |sell, sell_index|
        if sell_index >= buy_index
          profit = sell - buy
            if profit > most_profit
              most_profit = profit
              buy_day = buy_index
              sell_day = sell_index
            end
          end
       
        end
        
      end
      puts buy_day
      puts sell_day
      best_buy_sells = [buy_day, sell_day]
      
    end