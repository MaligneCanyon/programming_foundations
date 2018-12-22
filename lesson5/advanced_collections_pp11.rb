# inputs:
# - arr
# outputs:
# - arr
# reqs:
# - take an input arr
# - rtn a new arr w/ ints from the input arr that are mults of 3
# - dont mod the input arr
# rules:
# struct:
# - arr
# algo:
# - init a new_arr to []
# - for each elem (sub_arr) in the input arr
#   - select the elems that are mults of 3
#   - map the selection to a new_arr
# - rtn the new_arr

new_arr = []
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
new_arr = arr.map do |sub_arr|
  sub_arr.select { |elem| (elem % 3).zero? }
end

p arr
p new_arr
