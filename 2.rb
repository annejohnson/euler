# PROBLEM 2

def nth_fib(n)
  return n if n < 4
  nth_fib(n - 1) + nth_fib(n - 2)
end

puts (1..Float::INFINITY).lazy.map { |n| nth_fib(n) }.take_while { |n| n <= 4000000 }.force.select { |n| n.even? }.reduce(:+)
