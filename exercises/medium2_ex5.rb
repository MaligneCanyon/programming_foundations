# inputs:
# - Integer (3 lengths)
# outputs:
# - Symbol (type of triangle)
# reqs:
# - take 3 integers as lengths
# - determine whether the 3 lengths can form a valid triangle; if so what type
# - output the type of triangle
# rules:
# - shortest + middle > longest (valid)
# - shortest, middle, longest > 0 (valid)
# - shortest == middle == longest > 0 (equilateral)
# - shortest == middle or middle == longest (isosceles)
# - shortest != middle != longest (scalene)
# datastruct:
# - array (lengths)
# algo:
# - create an array that holds the triangle lengths
# - sort the array
# - apply the rules
# - output the triangle type

def triangle(length1, length2, length3)
  arr = [length1, length2, length3].sort!
  return :invalid if arr[0] == 0 || arr[0] + arr[1] <= arr[2]
  return :equilateral if arr[0] == arr[2]
  return :isosceles if arr[0] == arr[1] || arr[1] == arr[2]
  :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
