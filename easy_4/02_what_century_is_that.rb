system 'clear'
# Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

# Note: New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

def century(year)
  if year.digits.first == 0
    century = (year / 100).to_s
  else
    century = ((year / 100) + 1).to_s
  end

  return century + 'th' if %w(11 12 13).include?(century[-2, 2])
  get_suffix(century)
end

def get_suffix(century)
  case century[-1]
  when '1' then century + 'st'
  when '2' then century + 'nd'
  when '3' then century + 'rd'
  else century + 'th'
  end
end

puts century(2012)
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'

# --------------------------------------------------------------------------- #

# thought process #

# return value is a string that begins with the century number and ends with st, nd, rd, or th where appropriate. (3rd, 4th)

# 1st century => n <= 100
# 2nd century => 101-200
# 3 century => 201-300
# 4 century => 301
# 5 century => 401
# .
# .
# 10 century => 901-1000
# 11 century => 1001-1000


# (year / 100) + 1 => century

# convert the century into a string and concatenate the appropriate end (th)

# suffix:
# 1st
# 2nd
# 3rd
# 4th
# .
# 20th
# 21st
# 22nd
# 23rd
# 24th

# ends in 1 + 'st'
# ends in 2 + 'nd'
# ends in 3 + 'rd'
# all others + 'th'
