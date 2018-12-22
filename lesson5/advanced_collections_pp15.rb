# inputs:
# - arr (of hshs)
# outputs:
# - arr (of hshs)
# reqs:
# - take as input an arr of hshs, w/ each value an arr of ints
# - rtn an arr containing only those hshs where all of the ints are even
# - try not to mutate the original arr !
# rules:
# struct:
# - arr
# algo:
# - init a new_arr to []
# - for each arr elem (hsh)
#   - select the hshs where
#     - all of the value arr elems are even
#   - store the selection in the new_arr
# - rtn the new_arr

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select { |hsh| hsh.values.flatten.all?(&:even?) }
p arr
p new_arr
