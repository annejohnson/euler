# PROBLEM 14

cache = { "1" => 1 }

def get_collatz_length(n, cache)
  key = n.to_s
  return cache[key] if cache[key]
  nxt = (n.even? ? (n / 2) : (3 * n + 1))
  cache[key] = 1 + get_collatz_length(nxt, cache)
end

puts (1...1000000).max_by { |n| get_collatz_length(n, cache) }
