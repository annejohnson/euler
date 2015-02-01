# PROBLEM 9

def get_squares_up_to(n)
  (1..(Math.sqrt(n).to_i)).map { |num| num * num }
end

def get_pythagorean_triples(squares)
  squares.sort.combination(3).select { |trio| trio[0] + trio[1] == trio[2] }
end

def where_sum_is(nums, sum)
  nums.detect { |nums| nums.map { |n| Math.sqrt(n).to_i }.reduce(:+) == sum }
end

puts where_sum_is(get_pythagorean_triples(get_squares_up_to(200000)), 1000).map { |n| Math.sqrt(n).to_i }.reduce(1, :*)
