system 'clear'
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use Ruby's Date and Time classes.

MINS_PER_HOURS = 60
HOURS_PER_DAY = 24

def time_of_day(mins_to_midnight)
  hours, mins = mins_to_midnight.abs.divmod(MINS_PER_HOURS)
  hours = (hours % HOURS_PER_DAY) if hours >= HOURS_PER_DAY

  if mins_to_midnight < 0
    hours = (HOURS_PER_DAY - 1) - hours
    mins = MINS_PER_HOURS - mins
  end

  sprintf('%02d:%02d', hours, mins)
end

p time_of_day(75)
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"
