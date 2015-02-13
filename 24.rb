# PROBLEM 24

puts "0123456789".chars.permutation.to_a.map{ |chs| chs.inject(:+) }.sort[1000000 - 1]
