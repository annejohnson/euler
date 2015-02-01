# PROBLEM 6

def sum_of_squares(n)
  (1..n).reduce { |sum, x| sum + x*x }
end

def square_of_sum(n)
  (1..n).reduce(:+)**2
end

# answer with functions:
# puts (square_of_sum(100) - sum_of_squares(100))

# answer in a one-liner:
puts (1..100).reduce(:+)**2 - (1..100).reduce { |sum, x| sum + x*x }
