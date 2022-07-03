
def stock_picker(arr)

    #checks to make sure array inputs only are given
    raise 'Only arrays allowed' unless arr.instance_of?(Array)

    #sets value of biggest_profit to 0(biggest_loss if looking for loss)
    biggest_profit=0

    #sets most_profitable_days to [nil,nil]
    most_profitable_days=[nil,nil]

    #loops through array
    arr.each_with_index do |starting_price, buy_day|

        #takes buy day
        arr.each_with_index do |final_price,sell_day|

            #loops through remainder of array
            next if sell_day<=buy_day

            #if current day-first day>biggest_profit (first_day-current_day for loss)
            #make '>=' for shortest holding period
            if final_price-starting_price>=biggest_profit

              #reassign biggest_profit
              biggest_profit=final_price-starting_price

              #most_profitable_days.first=buy_day, 
              most_profitable_days[0]=buy_day#+1 #to make it more user friendly

              #most_profitable_days.last=sell_day
              most_profitable_days[-1]=sell_day#+1 #to make it more user friendly
            end
        end
    end
    
  #return most_profitable_days
  most_profitable_days
end