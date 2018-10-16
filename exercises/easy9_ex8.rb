# inputs:
# - Integer
# outputs:
# - Array
# reqs:
# - take two int args
#   - 1st arg is count of elements in the output arr
#   - 2nd arg is starting num for sequence
# - rtn an arr with the specd count of elements
# - elements will be multiples of the starting num
# rules:
# - count arg >= 0
# - rtn empty arr if count == 0
# - starting num can be any int
# struct:
# - Array
# algo:
# - init an arr to []
# - 1..count times
#   - copy the starting num * the counter to the arr
# - rtn the arr

# def sequence(count, starting_num)
#   arr = []
#   (1..count).each { |i| arr << starting_num * i }
#   arr
# end

def sequence(count, starting_num)
  (1..count).map { |i| starting_num * i } # range obj as an implicit Array ?
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
