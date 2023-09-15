require 'byebug'
class Array
    def my_uniq
      result = []
      each do |element|
        result << element unless result.include?(element)
      end
      result
    end
  end

  class Array
    def two_sum
      pairs = []
      self.each_with_index do |ele1, idx1|
      self.each_with_index do |ele2, idx2|
      pairs << [idx1,idx2] if idx2 > idx1 && ele1 + ele2 == 0
    end
    end
    pairs
    end
  end

  class Array
    def my_transpose
     self.transpose
    end
  end


def max_profit(prices)
  return [] if prices.empty?

  min_price = prices[0]
  max_profit = 0
  buy_day = 0
  sell_day = 0

  (1...prices.length).each do |day|
    if prices[day] < min_price
      min_price = prices[day]
      buy_day = day
    elsif prices[day] - min_price > max_profit
      max_profit = prices[day] - min_price
      sell_day = day
    end
  end

  return [] if max_profit == 0

  [buy_day, sell_day]
end


  