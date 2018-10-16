# inputs:
# - Integer (3 angles in degrees)
# outputs:
# - Symbol (type of triangle)
# reqs:
# - take 3 integers as angles btwn triangle sides
# - determine whether the 3 angles form a valid triangle; if so what type
# - output the type of triangle
# rules:
# - smallest + middle + largest == 180 (valid)
# - smallest > 0 (valid)
# - largest > 90 (obtuse)
# - largest == 90 (right)
# - largest < 90 (acute)
# datastruct:
# - array (angles)
# algo:
# - create an array that holds the triangle angles
# - sort the array
# - apply the rules
# - output the triangle type

def triangle(angle1, angle2, angle3)
  arr = [angle1, angle2, angle3].sort!
  return :invalid unless arr.sum == 180 && arr[0] > 0
  return :obtuse if arr[2] > 90
  return :right if arr[2] == 90
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
