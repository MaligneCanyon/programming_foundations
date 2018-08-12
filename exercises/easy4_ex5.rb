def multisum(target)
  mult = [3, 5]
  arr = []
  mult.each do |mult|
    num = mult
    while num <= target do
      arr << num unless arr.include?(num)
      num += mult
      p arr
    end
  end
  p arr.reduce(:+)
  arr.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
