def stock_picker(stock_prices)
  lowest = 9999999999
  highest = 0

  index_of_highest = 0
  index_of_lowest = 0

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