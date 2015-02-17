# PROBLEM 26

def get_cycle(n)
  numerator, denominator = 1, n
  dividends = []

  # ensure numerator is big enough to divide by denominator
  while numerator < denominator
    numerator *= 10
  end

  loop do
    # if we've seen the dividend already, then we have a cycle
    if dividends.include? numerator
      # prepare output and return from the method
      cycle_nums = dividends[dividends.index(numerator)..-1]
      return cycle_nums.map do |n|
        (n / denominator).to_s.chars.map { |ch| ch.to_i }
      end.flatten
    end

    dividends << numerator
    numerator %= denominator

    # if numerator (remainder) is 0, there is no cycle
    return [] if numerator == 0

    # increase numerator ('carry down zeroes') as needed
    # keep track of # of increases so we can pad with 0's when necessary
    padded_zeros = 0
    while numerator < denominator
      padded_zeros += 1
      numerator *= 10
    end

    # concatenate dividends with the appropriate number of zeros
    # the appropriate number of 0's is one less than the # of times looped
    dividends += ([0] * (padded_zeros - 1))
  end
end

puts (1...1000).max_by { |i| get_cycle(i).length }
