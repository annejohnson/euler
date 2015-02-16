# PROBLEM 28

GRID_SIZE = 1001

sum = 1
inc = 2
next_num = 1

(GRID_SIZE / 2).times do
  4.times do
    next_num += inc
    sum += next_num
  end
  inc += 2
end

puts sum
