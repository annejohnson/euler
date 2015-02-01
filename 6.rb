# PROBLEM 6

def sum_of_squares(n)
  n == 1 ? 1 : n * n + sum_of_squares(n - 1)
end

def square_of_sum(n)
  (x = (1..n).inject(0) { |result, num| result += num }) * x
end

# answer:
puts (square_of_sum(100) - sum_of_squares(100))
