# PROBLEM 19

LONG_MONTHS = [1,3,5,7,8,10,12]
SHORT_MONTHS = [4,6,9,11]
DECEMBER = 12

def is_leap_year?(year)
  if year % 100 == 0
    year % 400 == 0
  else
    year % 4 == 0
  end
end

# date is a hash with 3 int attributes:
# :month, :year, :weekday
def increment_by_a_month(date)
  if date[:month] == DECEMBER
    date[:year] += 1
    date[:month] = 1
    date[:weekday] += 31
  else
    if LONG_MONTHS.include? date[:month]
      date[:weekday] += 31
    elsif SHORT_MONTHS.include? date[:month]
      date[:weekday] += 30
    else
      if is_leap_year?(date[:year])
        date[:weekday] += 29
      else
        date[:weekday] += 28
      end
    end
    date[:month] += 1
  end
  date[:weekday] %= 7
end

date = {
  month: 1,
  year: 1901,
  weekday: 2
}

num_sundays_on_first = 0

until date[:month] == 1 && date[:year] == 2001 do
  num_sundays_on_first += 1 if date[:weekday] == 0
  increment_by_a_month(date)
end

puts "#{num_sundays_on_first}"
