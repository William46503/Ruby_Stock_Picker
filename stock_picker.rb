
def stock_picker(price_array)
    buy_pos = 0
    sell_pos = 1
    buy_price = 0
    sell_price = 0
    current_profit = -10
    current_best_profit = -10
    final_profit = -10
    i=0
    

   while i<price_array.length 
  
       buy_price = price_array[i] 

       #reset j to one index after i to run the while loop for every i-iteration
       j = i + 1
       while j < price_array.length
            sell_price = price_array[j]
            current_profit = sell_price - buy_price

            #store the best profit for each j-loop.
            if current_profit > current_best_profit 
                current_best_profit = current_profit
                sell_pos = j 
            end
            j +=1
       end
      
       #store over all best profit possible
        if current_best_profit > final_profit
            final_profit= current_best_profit
            buy_pos=i
        end

    i+=1
    end

p [buy_pos, sell_pos],  "Best profit is #{final_profit}$, buying at day #{buy_pos}, selling at day #{sell_pos}, starting from day 0"
end



stock_picker([17,3,6,9,15,8,6,1,10]) #=> [1, 4]
stock_picker([33, 25, 6, 8, 42, 9, 48, 36, 40, 31, 34, 38, 44, 21, 20, 4, 15, 17, 5, 23]) #=> [2, 6]
stock_picker([13, 37, 7, 46, 15, 10, 17, 36, 1, 24, 35, 16, 39, 19, 40, 30, 50, 11, 47, 5]) # [8, 16]
