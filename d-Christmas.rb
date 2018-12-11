N, X = gets.chomp.split.map(&:to_i)

$a, $p = [1], [1]

N.times do |i|
  $a << $a[i] * 2 + 3
  $p << $p[i] * 2 + 1
end

# p $a
# p $p
# $count = 0
def f(n, x)
  # $count += 1
  if n == 0
    x <= 0 ? 0 : 1
  elsif x <= 1
    0
  elsif 1 < x && x <= 1 + $a[n - 1]
    f(n - 1, x - 1)
  elsif x == 2 + $a[n - 1]
    $p[n - 1] + 1
  elsif 2 + ($a[n - 1]) < x && x <= 2 + 2 * $a[n - 1]
    $p[n - 1] + 1 + f(n - 1, x - 2 - $a[n - 1])
  else
    2 * $p[n - 1] + 1
  end
end

puts f(N, X)

# puts "count:#{$count}"
