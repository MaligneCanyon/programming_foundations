# input fp
# output str
# reqs
# - convert a fp input angle btwn 0 and 360 degrees to a string in deg in deg,min,sec
# - format output as follows
#   - use a degree symbol (°) to represent degs, a single quote (') to represent mins, and a double quote (") to represent secs
#   - use two digit numbers with leading zeros for mins and secs
#   - what about 9d59m59.9s ?  should round to 10d00m00s
# rules
# - 60 min/deg, 60 sec/min
# datastruct
# - numeric (input)
# - str (output)
# - algo
#   - calc the degree, minute and second portions of the input angle
#     - convert the input angle to secs and round the value
#     - calc the rounded number of degs
#     - calc the rounded number of mins
#     - calc the rounded number of secs
#   - format the output string


# MIN_PER_DEG = 60
SEC_PER_MIN = 60
SEC_PER_DEG = 3600
DEGREE = "\xC2\xB0"

def dms (angle)
  sec = (angle * SEC_PER_DEG).round
  deg, sec = sec.divmod(SEC_PER_DEG)
  min, sec = sec.divmod(SEC_PER_MIN)
  format(%(%d%s%02d'%02d"), deg, DEGREE, min, sec)
end

puts dms(9.999999)
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
