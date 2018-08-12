def swapcase(str)
  new_str = ''
  str.each_char { |c| new_str << ((c == c.upcase) ? c.downcase : c.upcase) }
  new_str
end

p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
