# inputs:
# - Array (nested with String and Integer subelements)
# outputs:
# - Array (flat arr with list of individual items)
# reqs:
# - take an arr with [type, number] subarrs
# - convert it to a flat arr with a list of individual items
# rules:
# - none
# struct:
# - Array
# - String (intermediate value to map)
# algo:
# - map each arr element (subarr)
#   - create a str by multiplying the item type (plus a space) by the item quantity
#   - split the str to form a new subarr to be mapped
# - flatten the new arr
# - rtn the new arr

def buy_fruit(arr)
  # arr.map { |subarr| ("#{subarr[0]} " * subarr[1]).split }.flatten
  arr.map { |fruit, num| ("#{fruit} " * num).split }.flatten
end

# def buy_fruit(arr)
#   new_arr = []
#   arr.each do |sub_arr|
#     sub_arr[1].times { new_arr << sub_arr[0] }
#   end
#   # p new_arr
#   new_arr
# end

# def buy_fruit(arr)
#   new_arr = []
#   arr.each do |fruit, num| # access the subarr elements by name
#     num.times { new_arr << fruit }
#   end
#   new_arr
# end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
