# PROBLEM 27

require 'prime'
RANGE = -999..999

def get_combos(range)
  range.to_a.permutation(2).to_a.concat (RANGE).map { |i| [i, i] }
end

def get_prime_solutions(arr)
  i = 0
  loop do
    return i unless Prime.prime?(i**2 + arr[0] * i + arr[1])
    i += 1
  end
end

puts get_combos(RANGE).max_by { |pair| get_prime_solutions(pair) }.inject(:*)
