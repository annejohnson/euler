# PROBLEM 17

ZERO_TO_NINETEEN = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

TENS_PLACES = [nil, nil, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

def get_num_str(n)
  if n < 20
    str = ZERO_TO_NINETEEN[n]
  elsif n < 100
    str = TENS_PLACES[n / 10]
    str += "-" + ZERO_TO_NINETEEN[n % 10] unless n % 10 == 0
  elsif n < 1000
    str = ZERO_TO_NINETEEN[n / 100] + " hundred"
    str += " and " + get_num_str(n % 100) unless n % 100 == 0
  elsif n == 1000
    str = "one thousand"
  end
  str
end

def remove_letters(str)
  str.chars.delete_if { |ch| ch == ' ' || ch == '-' }.join
end

puts (1..1000).map { |n| remove_letters(get_num_str(n)) }.map(&:size).inject(:+)
