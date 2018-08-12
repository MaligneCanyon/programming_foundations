def triangle(angle1, angle2, angle3)
  arr = [angle1, angle2, angle3].sort!
  return :invalid if arr[0] == 0 || arr[0] + arr[1] + arr[2] != 180
  return :right if arr[2] == 90
  return :obtuse if arr[2] > 90
  :acute
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10)
p triangle(0, 90, 90)
p triangle(50, 50, 50)

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
