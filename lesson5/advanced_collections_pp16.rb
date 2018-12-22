# this method will support any size of UUID, based on the groupings spec'd in
# the HYPHEN_SET
# inputs:
# - none
# outputs:
# - str
# reqs:
# - rtn a str w/ the format "12345678-1234-1234-1234-123456789012"
# - each of the 32 digits is a random hexadecimal char
# rules:
# struct:
# - str
# algo:
# - init an arr to [8, 4, 4, 4, 12]
# - init a str to ''
# - for each elem of the arr with value n
#   - init a substr to ''
#   - generate a substr of n chars
#     - n times
#       - gen a random char
#         - sample an arr containing chars 0-9 and a-f
#       - add the char to the substr
#    - add the substr to the str
#    - add a '-' unless we are at the last elem of the arr
# - rtn the str

HEX_CHARS = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)
HYPHEN_SET = [8, 4, 4, 4, 12]

def uuid
  str = ''
  HYPHEN_SET.each_with_index do |n, ndx|
    substr = ''
    n.times { substr << HEX_CHARS.sample }
    str << substr
    str << '-' unless ndx == HYPHEN_SET.size - 1
  end
  str
end

p uuid
