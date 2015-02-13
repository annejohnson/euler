# PROBLEM 23

cache = [0, 1]

def sum_divisors(n, cache)
  cache[n] ||= (1..(n/2)).select { |d| n % d == 0 }.inject(:+)
end

def summable_by_abundants?(n, cache)
  sums = (1..(n/2)).map { |i| [i, n - i] }
  sums.find { |pair| sum_divisors(pair[0], cache) > pair[0] && sum_divisors(pair[1], cache) > pair[1] }
end

puts (1..28123).select{ |n| !summable_by_abundants?(n, cache) }.inject(:+)
