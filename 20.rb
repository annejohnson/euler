# PROBLEM 20

def sum_of_digits(n)
  n.to_s.chars.map(&:to_i).reduce(:+)
end

# Using helper method:
# puts sum_of_digits((1..100).inject(:*))

# One-liner:
puts (1..100).inject(:*).to_s.chars.map(&:to_i).reduce(:+)
