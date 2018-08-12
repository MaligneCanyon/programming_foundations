# this should support any size of UUID, based on the groupings spec'd in the HYPHEN_SET
CHAR_SET = %w{ 0 1 2 3 4 5 6 7 8 9 a b c d e f }
HYPHEN_SET = [8, 4, 4, 4, 12]

def uuid()
  uuid_size = 0
  hyphen_arr = HYPHEN_SET.map do |value|
    uuid_size += value
  end
  # p hyphen_arr

  str = ''
  hyphen_ndx = 0
  (1..uuid_size).each do |counter|
    char = CHAR_SET.sample
    str << char
    if counter < uuid_size && counter == hyphen_arr[hyphen_ndx]
      hyphen_ndx += 1
      str << '-'
    end
  end
  str
end

p uuid
