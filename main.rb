# Dev: Zach Baird
# Objective:
# This method takes in an array of stock prices, where position 0 is day 1, position 1 is day 2, etc.
#   The method identifies the highest stock value, purchases the lowest stock value that occurs before
#   the stock hits that highest value, and then sells at the highest for a profit.

def stock_picker(stock_prices)
  lowest, highest = 9999999999, 0
  index_of_highest, index_of_lowest = 0

  stock_prices.each_with_index do |price, index|
    
    if price > highest
      highest, index_of_highest = price, index
    end

  end

  index = 0
  while index < index_of_highest

    if stock_prices[index] < lowest
      lowest, index_of_lowest = stock_prices[index], index
    end

    index += 1
  end
  



  puts "You bought stock on Day #{index_of_lowest + 1}, for $#{lowest}, and sold it on Day #{index_of_highest + 1} for $#{highest}. Your profit is $#{highest - lowest}."
end


stock_picker([2, 3, 6, 2, 15, 4, 7])
stock_picker([5, 4, 10, 2])