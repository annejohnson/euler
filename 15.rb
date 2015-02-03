# PROBLEM 15

# All paths for a 20x20 grids consist of 40 moves (20 downs
# and 20 rights). The number of unique paths is the number of
# ways we can distribute 20 moves of one type among the
# total 40. Hence C(40, 20).

def get_num_paths(grid_width)
  n, r = grid_width * 2, grid_width
  ((n - r + 1)..n).inject(:*) / (1..r).inject(:*)
end

puts get_num_paths(20)
