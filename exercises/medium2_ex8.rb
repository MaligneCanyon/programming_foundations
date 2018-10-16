# inputs:
# - integer (seed num)
# outputs:
# - num (next featured num)
# reqs:
# - take an int arg
# - rtn the next odd num that is a multiple of 7 and has unique digits
# rules:
# - odd num
# - multiple of 7
# - digits occur at most 1x
# - if candidate number has > 10 digits, at least one digit is a repeat
# struct:
# - array (to hold digits)
# algo:
# - calc an initial multiple of 7
#   - divide the num by 7 (discarding the remainder)
#   - multiply the result by 7
# - until feature found or more than 10 digits present
#   - find the next odd multiple of 7
#     - if the multiple is odd, add 14 to it
#     - else add 7 to the multiple
#   - return err msg if multiple > 9999999999
#   - convert the multiple to a string
#   - chk for unique digits
#     - split the string into an array of chars
#     - if the array size equals the unique array size then unique digits
#   - if unique return the multiple

INCR = 7
INCR_X2 = 14

def featured(seed)
  num = seed / INCR * INCR
  loop do
    num += num.odd? ? INCR_X2 : INCR
    return 'no feature' if num > 9999999999 # 11 digits
    arr = num.to_s.chars
    return num if arr.size == arr.uniq.size
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
