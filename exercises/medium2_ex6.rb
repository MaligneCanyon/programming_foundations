def triangle(length1, length2, length3)
  arr = [length1, length2, length3].sort!
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
