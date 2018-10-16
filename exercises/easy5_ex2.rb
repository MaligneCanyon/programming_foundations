# inputs: integer
# outputs: string
# reqs:
# - convert input mins (b4 or after midnight) to string in 24 hour format (hh:mm)
# rules:
# - if the number of minutes is positive, the time is after midnight
# - if the number of minutes is negative, the time is before midnight.
# datastruct:
# - integer
# algo:
# - from the input mins, calc offset from midnight
# - calc the hour and min
# - format (and output) the output str

def time_of_day(mins_from_midnite)
  mins_from_midnite %= 1440 # account for multiday offsets
  hour, min = mins_from_midnite.divmod(60)
  # p format("%02d:%02d", hour, min)
  format("%02d:%02d", hour, min)
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
