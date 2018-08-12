# inputs:
# - integer
# outputs:
# - integer
# reqs:
# - return the next featured num that is greater than the input num or return nil and output an error msg
# rules:
# - odd number
# - multiple of 7
# - digits occur at most 1x
# - if candidate number has > 10 digits, at least one digit is a repeat
# datastruct:
# - array (to hold digits of potential candidates)
# algo:
# - calc an initial candidate from the input
# - while candidate has < 11 digits
#   - determine the next multiple of 7 (a candidate)
#   - convert the candidate to a string
#   - split the string into an array of chars
#   - check whether any char occurs > 1x
#   - either
#     - return the candidate
#     - print an err msg and return nil
#     - calc the next candidate

INCR = 7
INCR_X2 = 14

def featured(num)
  candidate = (num / INCR + 1) * INCR
  candidate += INCR if candidate.even?
  loop do
    arr = candidate.to_s.split('')
    return candidate if arr.uniq.size == arr.size
    return 'No possible next featured number' if arr.size > 10
    candidate += INCR_X2
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
