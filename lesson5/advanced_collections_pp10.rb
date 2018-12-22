# reqs:
# - take an input arr
# - rtn a new arr w/ int values incrd by 1
# - dont mod the input arr
# rules:
# struct:
# - arr
# algo:
# - init a new_arr to []
# - for each elem (hsh) in the input arr
#   - init a new_hsh to {}
#   - for each value in the hsh
#     - incr the hsh value
#     - copy the k:v pair to the new_hsh
#   - map the new_hsh to a new_arr
# - rtn the new_arr

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hsh|
  new_hsh = {}
  hsh.each { |k, v| new_hsh[k] = v + 1 }
  new_hsh
end

p arr
p new_arr
