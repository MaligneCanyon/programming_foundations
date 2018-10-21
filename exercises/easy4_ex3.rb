# inputs:
# - integer (year)
# outputs:
# - boolean
# reqs:
# - take an int as input (the year)
# - rtn T or F based on whether or not the input is a leap year
# rules:
# - if year % 100 == 0, then
#   leap if year % 400 == 0
# - otherwise
#   leap if year % 4 == 0
# - leap = (year % 100 == 0) ? (year % 400 == 0) : (year % 4 == 0)
# struct:
# - numeric
# algo:
# - apply the rules to determine if the input is a leap year
# - rtn the result

def leap_year?(year)
  (year % 100 == 0) ? (year % 400 == 0) : (year % 4 == 0)
  # (year % 400 == 0) || ((year % 4 == 0) && (year % 100 != 0)) # this works too
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
