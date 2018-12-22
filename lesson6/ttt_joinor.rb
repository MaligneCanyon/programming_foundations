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
# - rtn '' if the arr is empty
# - map the arr of ints to an arr of chars
# - rtn the 1st arr elem if the arr size is 1
# - if the arr size > 2
#   - join all but the last arr elem to form a str
#     - use the join method and the delimiter
#   - append the delimiter to the str
# - else
#   - set the str equal to the 1st arr elem and a space
# - append the conjunction, a space, and the last arr elem to the str
# - rtn the str

def joinor(arr, delimiter = ', ', conjunction = 'or')
  return '' if arr.empty?
  arr.map!(&:to_s)
  return arr[0] if arr.size == 1
  str = arr.size > 2 ? arr[0..-2].join(delimiter) + delimiter : arr[0] + ' '
  # str = arr[0..-2].join(delimiter)
  # str << (arr.size > 2 ? delimiter : ' ')
  str << conjunction + ' ' + arr[-1]
end

p joinor([])                     == ""
p joinor([1])                    == "1"
p joinor([1, 2])                 == "1 or 2"
p joinor([1, 2, 3])              == "1, 2, or 3"
p joinor([1, 2, 3], '; ')        == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"
