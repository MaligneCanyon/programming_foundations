# inputs:
# - integer (year)
# outputs:
# - integer (num of F13 days in year)
# reqs:
# - take an int reping the year
# - determine num of F13 days
# - output the num
# rules:
# - year > 1752
# struct:
# - numeric
# algo:
# - init a total to 0
# - for each month
#   - chk whether the 13th day is a fri
#   - if fri add to total
# - rtn the total

def friday_13th(year)
  thirteenths = 0
  1.upto(12) { |mth| thirteenths += 1 if Time.new(year, mth, 13).friday? }
  thirteenths
end

p friday_13th(2018)
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
