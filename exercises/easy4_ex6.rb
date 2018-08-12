def running_total(arr)
  total = 0
  #arr.map { |v| total += v }
  arr.each_with_object([]) { |v, arr| arr << total += v }
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
