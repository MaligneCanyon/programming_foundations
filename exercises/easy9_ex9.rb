HSH = {
  90 => 'A',
  80 => 'B',
  70 => 'C',
  60 => 'D',
  0  => 'F'
}

def get_grade(grade1, grade2, grade3)
  grade_sum = grade1 + grade2 + grade3
  HSH.each { |boundary, letter| return letter if grade_sum >= 3 * boundary }
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
