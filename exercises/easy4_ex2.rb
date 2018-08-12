def century_num(year)
  century_num = year / 100
  century_num += 1 if year % 100 > 0
  century_num
end


def century(year)
  h = Hash.new("th") # 'th' is default suffix; teen centuries plus centuries ending in 0, 4-9
  h[1] = "st"
  h[2] = "nd"
  h[3] = "rd"
  num = century_num(year)
  suffix = (((num % 100) / 10) == 1 ? "th" : h[num % 10])
  num.to_s + suffix
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
