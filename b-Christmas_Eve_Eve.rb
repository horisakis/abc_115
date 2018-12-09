N = gets.chomp.to_i

prices = []
N.times do |n|
  prices << gets.chomp.to_i
end

max_idx = prices.index(prices.max)
prices[max_idx] = prices[max_idx] / 2

puts prices.inject {|sum, i| sum + i}
