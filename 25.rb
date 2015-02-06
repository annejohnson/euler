# PROBLEM 25

cache = [1, 1, 1]

def nth_fib(n, cache)
  cache[n] ||= nth_fib(n - 1, cache) + nth_fib(n - 2, cache)
end

puts (1..Float::INFINITY).find { |n| nth_fib(n, cache).to_s.size === 1000 }
