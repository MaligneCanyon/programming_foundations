# input: str
# output: int in range 0..1439
# reqs
# - str in 24hr format hh:mm
# rules
# - none

MINS_PER_HOUR = 60
MINS_PER_DAY  = 1440

def after_midnight(str)
  # arr = str.split(":")
  # hour = arr[0].to_i
  # min  = arr[1].to_i
  hour = str[0,2].to_i
  min  = str[3,2].to_i
  (hour * MINS_PER_HOUR + min) % MINS_PER_DAY
end

def before_midnight(str)
  (MINS_PER_DAY - after_midnight(str)) % MINS_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
p after_midnight('00:01') == 1
p before_midnight('00:01') == 1439
