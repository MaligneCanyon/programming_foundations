def time_of_day(num)
  num %= 1440 # account for multi-day offsets
  hour, min = num.divmod(60)
  #p hour, min
  p format("%02d:%02d", hour, min)
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p -3 % 60 == 57