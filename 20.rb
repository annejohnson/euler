# PROBLEM 20

puts (1..100).inject(:*).to_s.chars.map(&:to_i).reduce(:+)
