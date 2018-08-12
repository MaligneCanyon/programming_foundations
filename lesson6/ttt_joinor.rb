# inputs:
# - Array
# - String (optional separator)
# - String (optional conjunction)
# outputs:
# - String
# reqs:
# - join array elements
# - join elements using a comma or an optional separator
# - place either 'or' or an optional conjunction before the last element
# rules:
# - no sep if only 2 elements
# - no sep after last element
# - if no sep spec'd, use ', '
# - if no conj spec'd use 'or '
# datastruct:
# - String

def joinor(arr, sep = ' ', conj = 'or') # optional params
  str = ''
  size = arr.size
  if sep == ' ' && size > 2
    sep = ', '
  end
  conj << ' '
  arr.each_with_index do |elem, ndx|
    str << elem.to_s
    str << sep unless ndx == size - 1
    str << conj if ndx == size - 2
    # p str
  end
  str
end

p joinor([1, 2]) == "1 or 2"
p joinor([1, 2, 3]) == "1, 2, or 3"
p joinor([1, 2, 3], '; ') == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"
