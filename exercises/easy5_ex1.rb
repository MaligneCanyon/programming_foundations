# input: str
# output int
# reqs
# - none
# rules
# - ascii string value = sum of ascii char values

def ascii_value(str)
  if str == ''
    0
  else
    arr = str.chars
    arr.map! { |c| c.ord }
    #p arr
    arr.reduce(:+)
  end
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
char = 'a'
p char.ord.chr == char
