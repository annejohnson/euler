require "prime"

n = 600851475143

puts Prime.prime_division(n).map { |fact| fact.first }.max
