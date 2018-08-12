# input fp
# output str
# reqs
# - convert a fp input angle btwn 0 and 360 degrees to a string in deg in deg,min,sec
# - format output as follows
#   - use a degree symbol (°) to represent degs, a single quote (') to represent mins, and a double quote (") to represent secs
#   - use two digit numbers with leading zeros for mins and secs
#   - what about 9d59m59.9s ?  should round to 10d0m0s
# rules
# - 60 min/deg, 60 sec/min
# datastruct
# - numeric (input)
# - str (output)

MIN_PER_DEG = 60
SEC_PER_MIN = 60
SEC_PER_DEG = 3600
DEGREE = "\xC2\xB0"

def dms (angle)
  sec = (angle * SEC_PER_DEG).round
  deg = sec / SEC_PER_DEG
  rem = sec % SEC_PER_DEG
  min = rem / SEC_PER_MIN
  rem = rem % SEC_PER_MIN
  sec = rem
  str = format(%(%d%s%02d'%02d"), deg, DEGREE, min, sec)
  # puts str
  # str
end

# def dms (angle)
#   deg = angle.to_i
#   rem = (angle - deg) * MIN_PER_DEG
#   min = rem.to_i
#   rem -= min
#   sec = (rem * SEC_PER_MIN).round
#   if sec == SEC_PER_MIN
#     sec = 0
#     min += 1
#   end
#   if min == MIN_PER_DEG
#     min = 0
#     deg += 1
#   end
#   str = format("%d%s%02d'%02d\"", deg, DEGREE, min, sec)
#   p str
# end

p dms(9.999999)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
