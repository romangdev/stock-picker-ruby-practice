def stock_picker(prices)
    highest_profit = 0
    buy_sell = []
    prices.each_with_index do
        |buy_price, idx|
        for sell_price in (idx + 1)..(prices.length - 1)
            if prices[sell_price] - buy_price > highest_profit
                highest_profit = prices[sell_price] - buy_price
                buy_sell[0] = idx
                buy_sell[1] = sell_price
            end
        end
    end
    buy_sell
end

#testing to see if it works properly
check = stock_picker([17,3,6,9,15,8,6,1,10])
p check
# => [1, 4]