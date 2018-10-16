# inputs:
# - Integer (number of switches)
# outputs:
# - Array (ids of switches that are ON)
# reqs:
# - make n passes
# - for each pass i, toggle the k*ith switch, k*i<=n
# datastruct:
# - Array (w/ T or F values to indicate whether switch is ON or OFF)
# algo:
# - init an array with n 'false' values
# - for i = 1 to n times
#     k = 0
#     while k < n
#       k += i
#       toggle switch k (T <-> F)
#       save the switch state in the array
# - for each element of the array
#     if the switch state is T (ie ON)
#       copy the array index to an output array

def array_init(size, value)
  arr = Array.new(size) { value }
end

# def truthy_array_indexer(arr)
#   new_arr = []
#   arr.each_with_index { |v, i| new_arr << i + 1 if v }
#   # p new_arr
#   new_arr
# end

# def lights(n)
#   # p "n == #{n}"
#   arr = array_init(n, false)
#   # p arr
#   (1..n).each do |i|
#     k = 0
#     loop do
#       k += i
#       break if k > n
#       arr[k - 1] = !arr[k - 1]
#       # p "i == #{i}, k == #{k}"
#     end
#   end
#   # p arr
#   truthy_array_indexer(arr)
# end

def lights(n)
  new_arr = []
  arr = array_init(n, false)
  1.upto(n) do |step_size|
    start_ndx = step_size - 1
    start_ndx.step(by: step_size, to: n - 1) { |ndx| arr[ndx] = !arr[ndx] }
  end
  arr.each_with_index { |v, i| new_arr << i + 1 if v == true }
  new_arr
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9] # [1**2, 2**2, 3**2, etc]
p lights(1000)
