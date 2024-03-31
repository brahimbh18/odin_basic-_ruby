def stock_picker(stock_prices)

    max_profit = 0
    buy_day = 0
    sell_day = 0

    stock_prices.each_with_index do |buy_price, buy_day_index|
        (buy_day_index + 1 ...stock_prices.length).each do |sell_day_index|
            sell_price = stock_prices[sell_day_index]

            profit = sell_price - buy_price
            if max_profit < profit
                max_profit = profit
                buy_day = buy_day_index
                sell_day = sell_day_index
            end
        end
    end
    [buy_day, sell_day]
end