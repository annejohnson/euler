# PROBLEM 48

puts (1..1000).inject { |result, n| result + n**n }.to_s[-10..-1]
