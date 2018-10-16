# inputs:
# - Array of ints
# - String delimiter
# - String conjunction
# outputs:
# - String
# reqs:
# - join array elements using optional delimiter and conjunction
# rules:
# - if Array size is 2, no delimiter
# - conjuction placed after delimiter and before final Array element
# struct:
# - String (build String for output)
# algo:
# - join all but the last element of the Array using the join method
# - append the delimiter (if applicable), the conjunction, and the last element
# - return the output String

def joinor(arr, delimiter = ', ', conjunction = 'or')
  return "" if arr.empty?
  arr.map!(&:to_s)
  return arr[0] if arr.size == 1
  str = arr[0..-2].join(delimiter)
  str << (arr.size > 2 ? delimiter : ' ')
  str << conjunction + ' ' + arr[-1]
end

p joinor([])                       # => ""
p joinor([1])                      # => "1"
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
