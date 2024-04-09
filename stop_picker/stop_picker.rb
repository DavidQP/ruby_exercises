

def stock_picker(array)
  dates = []
  profit = 0
  array.each.with_index do |buy_price, index|
    next if index == (array.length - 1) 
    for second_index in ((index + 1)..(array.length - 1)) do
      next_profit = array[second_index] - array[index]
      if next_profit > profit
        profit = next_profit
        dates = [index, second_index]
      end
    end
  end
  dates
end

p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12


