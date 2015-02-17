# PROBLEM 29

require 'prime'
RANGE = 2..100

def prime_factors(num)
  Prime.prime_division(num).map do |arr|
    [arr[0]] * arr[1]
  end.flatten
end

def get_combos(range)
  combos = range.map{ |n| [n, n] }.concat range.to_a.permutation(2).to_a
end

get_combos(RANGE).map do |pair|
  (prime_factors(pair[0]) * pair[1]).sort
end.uniq.count
