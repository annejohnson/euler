# PROBLEM 36

def palindrome?(num)
  (num = num.to_s).chars[0..(num.size/2)] == num.reverse.chars[0..(num.size/2)]
end

def get_binary(base_10)
  base_2 = ""
  i = 0
  loop do
    # if divisible by next power of 2, add 0
    if base_10 % 2**(i + 1) == 0
      base_2 = "0" + base_2
    # otherwise, add one and decrement by current power of 2
    else
      base_2 = "1" + base_2
      base_10 -= 2**i
    end
    i += 1
    break if base_10 <= 0
  end

  base_2
end

puts (1..1000000).select { |n| palindrome?(n) && palindrome?(get_binary(n)) }.inject(:+)
