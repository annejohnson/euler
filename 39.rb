# PROBLEM 39

def square?(n)
  (sqrt = Math.sqrt(n)).floor == sqrt.ceil
end

puts "#{(1..1000).to_a.combination(2).select do |pair|
  square?(pair[0]**2 + pair[1]**2)
end.map do |nums|
  (nums << Math.sqrt(nums[0]**2 + nums[1]**2).floor).inject(:+)
end.select { |peri| peri <= 1000 }.group_by { |n| n }.to_a.max_by { |items| items[1].length }[0]}"
