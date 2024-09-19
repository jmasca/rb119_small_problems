system 'clear'
# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

# You may not use Ruby's Date and Time methods.

MINS_PER_HOUR = 60
MINS_PER_DAY = 1440

def after_midnight(time_of_day)
  hours, mins = time_of_day.split(':')
  mins_after_midnight = (hours.to_i * MINS_PER_HOUR) + mins.to_i
  mins_after_midnight == MINS_PER_DAY ? 0 : mins_after_midnight
end

def before_midnight(time_of_day)
  hours, mins = time_of_day.split(':')
  mins_before_midnight = (hours.to_i * MINS_PER_HOUR) + mins.to_i
  mins_before_midnight == 0 ? 0 : MINS_PER_DAY - mins_before_midnight
end

p after_midnight("12:15")
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
