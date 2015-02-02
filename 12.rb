# PROBLEM 12

cache = [1, 1]

def nth_triangle_number(n, cache)
  cache[n] || cache[n] = n + nth_triangle_number(n - 1, cache)
end

# Take the prime factorization (a set of prime numbers and corresponding exponents) of n.
# The total number of divisors is the reduced product of all (e + 1).
#
# http://stackoverflow.com/questions/2844703/algorithm-to-find-the-factors-of-a-given-number-shortest-method?answertab=active#tab-top
def num_factors(n)
  require 'prime'
  Prime.prime_division(n).inject(1) { |result, pair| result * (pair[1] + 1) }
end

puts nth_triangle_number((1..Float::INFINITY).find { |n| num_factors(nth_triangle_number(n, cache)) > 500 }, cache)
