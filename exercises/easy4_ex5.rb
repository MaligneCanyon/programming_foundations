# def multisum(target)
#   mult = [3, 5]
#   arr = []
#   mult.each do |mult|
#     num = mult
#     while num <= target do
#       arr << num unless arr.include?(num)
#       num += mult
#     end
#   end
#   arr.reduce(:+)
# end

def multisum(num)
  arr = []
  3.step(by: 3, to: num) do |value|
    arr << value
  end
  5.step(by: 5, to: num) do |value|
    arr << value
  end
  arr.uniq.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
