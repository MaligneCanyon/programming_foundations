a = 2
b = [5, 8]
arr = [a, b]  # arr == [2, [5, 8]]

arr[0] += 2  # arr == [4, [5, 8]]
# this is reassignment of arr[0], which now pts to a dif obj (other than 'a')
# element-wise assignment which mutates arr (but has no effect on 'a')

# arr[1][0] == 5
arr[1][0] -= a  # arr == [4, [1, 8]] # this is reassignment of arr[1][0]
# element-wise assignment which mutates arr[1] (thus mutates 'b')

# a == 4, b == [1, 8] ???
# no, 'a' does not change (we don't ever change the value of the obj it pts to)
p a, b  # a == 2, b == [3, 8]
