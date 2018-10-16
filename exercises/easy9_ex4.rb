# inputs:
# - Integer
# outputs:
# - Array (ints from 1 to the input num, inclusive)
# reqs:
# - take a positive int
# - rtn an arr containing all ints btwn 1 and the input num
# rules:
# - input int always > 0
# struct:
# - Array
# algo:
# - rtn an arr

# def sequence(num)
#   Array(1..num)
# end

# ALT VERS (allows a non-positive input)
def sequence(num)
  num.negative? ? (num..-1).to_a : (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0)
p sequence(-1)
p sequence(-3)
p sequence(-5)
