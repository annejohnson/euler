# PROBLEM 6

puts (1..100).reduce(:+)**2 - (1..100).map { |n| n*n }.reduce(:+)
