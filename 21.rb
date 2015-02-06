# PROBLEM 21

# avoid recalculating divisor sums
cache = [0, 1]

def get_divisors(n)
  (1..(n / 2)).select { |num| n % num == 0 }
end

def sum_divisors(n, cache)
  cache[n] ||= get_divisors(n).inject(:+)
end

puts "#{(1...10000).to_a.combination(2).select do |pair|
  sum_divisors(pair[0], cache) == pair[1] && pair[0] == sum_divisors(pair[1], cache)
end.flatten.inject(:+) }"
