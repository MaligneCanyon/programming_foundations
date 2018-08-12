# def sequence(num)
#   arr = []
#   (1..num).each { |i| arr << i }
#   arr
# end

# def sequence(num)
#   arr = []
#   num.times { |i| arr << i + 1 }
#   arr
# end

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
