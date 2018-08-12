# def sequence(count, first_num)
#   arr = []
#   count.times { |i| arr << first_num * (i + 1) }
#   arr
# end

def sequence(count, first_num)
  (1..count).map { |i| first_num * i }
end
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
