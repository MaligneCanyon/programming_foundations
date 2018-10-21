# inputs:
# - integer
# outputs:
# - string
# reqs:
# - take an integer as input
# - the input reps a time in minutes b4 or after midnite
# - rtn a str reping the time in hh:mm format
# rules:
# - if the input is positive, after midnite
# - if the input is negative, b4 midnite
# struct:
# - numeric
# algo:
# - divide the input by the num of mins in a day
#   - the modulus is the total minutes b4 or after midnite
#     - accts for multi-day offset
# - divide the result by the num of mins in an hour
#   - the quotient is the hours after midnite
#   - the modulus is the minutes after midnite
# - format the quotient and 2nd modulus in a str
# - rtn the result

MINS_PER_DAY = 1440
MINS_PER_HOUR = 60

def time_of_day(mins_from_midnite)
  mins_from_midnite %= MINS_PER_DAY
  hours_from_midnite, mins_from_midnite = mins_from_midnite.divmod(MINS_PER_HOUR)
  format("%02d:%02d", hours_from_midnite, mins_from_midnite)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p -3 % 60 == 57
p -3 / 60 == -1
