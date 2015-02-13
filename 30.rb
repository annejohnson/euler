# PROBLEM 30

puts (32...1000000).select { |n| n.to_s.chars.map(&:to_i).reduce(0) { |result, i| result + i**5 } == n }.inject(:+)
