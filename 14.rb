# PROBLEM 14

cache = { "1" => 1 }

def get_collatz_length(n, cache)
  h_key = n.to_s
  return cache[h_key] if cache[h_key]
  nxt = (n.even? ? (n / 2) : (3 * n + 1))
  cache[h_key] = 1 + get_collatz_length(nxt, cache)
end

puts (1...1000000).map { |n| [n, get_collatz_length(n, cache)] }.max_by { |n| n[1] }[0]
