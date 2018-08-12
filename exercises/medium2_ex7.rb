def friday_13th(year)
  thirteenths = 0
  1.upto(12) { |mth| thirteenths += 1 if Time.new(year, mth, 13).friday? }
  thirteenths
end

p friday_13th(2018)
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
