# PROJECT 67

str = File.open("67_triangle.txt", "r") { |file| file.read }

# Converts a pyramid string into a 2-D array of integers.
# Reverses it so that the largest rows come first.
def make_pyramid_array(str)
  str.split("\n").map { |line| line.split(' ').map { |ch| ch.to_i } }.reverse
end

# Traverses a pyramid (2-D integer array) from bottom to top.
# Stores the maximum path found for each element (the max path
# of its 2 children plus itself).
# Returns the maximum sum from the bottom to the top.
def get_max_path(num_pyramid)
  num_pyramid.each_index do |i|
    next if i == 0
    num_pyramid[i].each_index do |j|
      num_pyramid[i][j] += [num_pyramid[i - 1][j], num_pyramid[i - 1][j + 1]].max
    end
  end

  num_pyramid[-1].first
end

puts get_max_path(make_pyramid_array(str))
