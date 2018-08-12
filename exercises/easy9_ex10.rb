# def buy_fruit(arr)
#   new_arr = []
#   arr.each do |sub_arr|
#     sub_arr[1].times { new_arr << sub_arr[0] }
#   end
#   # p new_arr
#   new_arr
# end

def buy_fruit(arr)
  new_arr = []
  arr.each do |fruit, num|
    num.times { new_arr << fruit }
  end
  p new_arr
  new_arr
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
