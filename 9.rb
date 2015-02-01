# PROBLEM 9

def get_squares_up_to(n)
  (1..(Math.sqrt(n).to_i)).map { |num| num * num }
end

def get_pythagorean_doubles(nums)
  doubles = []
  nums.each do |n|
    nums.each do |x|
      if nums.index(n + x)
        doubles << [n, x, n + x].sort unless doubles.index { |itm| [n, x, n + x].sort == itm }
      end
    end
  end
  doubles
end

def where_sum_is(nums, sum)
  nums.select { |doubles| Math.sqrt(doubles[0]).to_i + Math.sqrt(doubles[1]).to_i + Math.sqrt(doubles[2]).to_i == sum }.first
end

pair = where_sum_is(get_pythagorean_doubles(get_squares_up_to(200000)), 1000)
puts (Math.sqrt(pair[0]) * Math.sqrt(pair[1]) * Math.sqrt(pair.last))
