# inputs:
# - arr
# outputs:
# - hsh
# reqs:
# - take an input arr containing 2-elem sub_arrs
# - rtn a hsh where the keys and values are the 1st and 2nd elems of the
#   sub_arrs
# rules:
# struct:
# - arr
# algo:
# - init a hsh to {}
# - for arr elem (sub_arr)
#   - set the hsh key to sub_arr[0]
#   - set the hsh value to sub_arr[1]
# - rtn the hsh

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}
arr.each do |sub_arr|
  hsh[sub_arr.first] = sub_arr.last
end

p hsh
