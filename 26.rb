# PROBLEM 26

def get_cycle(n)
  num = 1
  denom = n
  num_zeros = 0
  digits, dividends = [], []
  loop_counter = 0

  while num < denom
    num *= 10
    num_zeros += 1
  end


  loop do
    if dividends.include? num
      return dividends[dividends.index(num)..-1].map { |n| n / denom }
    end
    dividends << num
    digits << num / denom
    remainder = num % denom

    break [] if remainder == 0

    num_zeros.times do
      remainder *= 10
    end
    num = remainder
  end
  digits
end

puts "#{get_cycle(13)}"
