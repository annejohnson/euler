# PROBLEM 5

n = 20
until (11..20).all? { |fct| n % fct == 0 }
  n += 20
end
puts n
