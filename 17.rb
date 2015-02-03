# PROBLEM 17

ZEROTH = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

FIRST = [nil, nil, "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

def get_num_str(n)
  if n < 20
    ZEROTH[n]
  elsif n < 100
    str = FIRST[n / 10]
    unless n % 10 == 0
      str += "-" + ZEROTH[n % 10]
    end
    str
  elsif n < 1000
    str = ZEROTH[n / 100] + " hundred"
    unless n % 100 == 0
      str += " and " + get_num_str(n % 100)
    end
    str
  elsif n == 1000
    "one thousand"
  end
end

def remove_letters(str)
  str.chars.delete_if { |ch| ch == ' ' || ch == '-' }.join
end

puts (1..1000).map { |n| remove_letters(get_num_str(n)) }.map(&:size).inject(:+)
