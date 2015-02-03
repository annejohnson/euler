# PROBLEM 15

# curr_path looks like "DRDRRD"
def get_paths(grid_width, paths, x, y, curr_path = "")

  # check if we're finished traversing
  if x >= grid_width && y >= grid_width
    paths << curr_path
  else
    # explore down if possible
    if y < grid_width && x <= grid_width
      get_paths(grid_width, paths, x, y + 1, curr_path + 'D')
    end
    # explore right if possible
    if x < grid_width && y <= grid_width
      get_paths(grid_width, paths, x + 1, y, curr_path + 'R')
    end
  end

  paths
end

puts get_paths(20, [], 0, 0).count
