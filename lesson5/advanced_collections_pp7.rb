a = 2
b = [5, 8]
arr = [a, b]  # arr == [2, [5, 8]]

arr[0] += 2  # arr == [4, [5, 8]]
# arr[1][0] == 5
arr[1][0] -= a  # arr == [4, [1, 8]]
# a == 4, b == [1, 8] ???
# nope, 'a' does not change (we don't specifically modify its value)
p a, b  # a == 2, b == [3, 8]
