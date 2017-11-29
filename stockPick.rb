=begin
   Given an unsorted array of stock prices, pick the best time to buy and sell.

   Idea: Go through the array from beginning to end, check each of the indexes,
   do a difference of the current index versus each index after for each to get
   the profit value, update the maximum value each time and then store those two
   indices, this will take an O(N^2) time with an O(1) space.
=end

def stockPick(stocks)
   low_buy = 0
   high_sell = 0
   difference = stocks[high_sell] - stocks[low_buy]
   buy_index = 0
   sell_index = 0

   stocks.each_with_index do |value, index|
      if stocks[sell_index] < value
         sell_index = index

      end

      if stocks[buy_index] > value      
         buy_index = index
         sell_index = index
      end

      if stocks[sell_index] - stocks[buy_index] > difference
         low_buy = buy_index
         high_sell = sell_index
         difference = stocks[high_sell] - stocks[low_buy]
      end
   end
   [low_buy, high_sell]   
end

list = [17,3,6,9,15,8,6,1,10]
index1, index2 = stockPick(list)
puts "[#{index1},#{index2}]"
