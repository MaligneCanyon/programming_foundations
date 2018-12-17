# inputs:
# - 3 Integers
# outputs:
# - String
# reqs:
# - take 3 int args
# - avg the 3 inputs
# - rtn a letter representing the avg
# rules:
# - inputs btwn 0 and 100 inclusive
# struct:
# - numeric
# algo:
# - take the avg of the inputs
# - use a case statement to determine the corresponding letter
# - rtn the letter

def get_grade(*arg) # one or more int or fp args
  case arg.sum / arg.size.to_f
  when (0...60)  then 'F'
  when (60...70) then 'D'
  when (70...80) then 'C'
  when (80...90) then 'B'
  else 'A' # when (90..100) then 'A'
  end
end

# def get_grade(int1, int2, int3)
#   avg = (int1 + int2 + int3) / 3.0
#   case avg
#     when (0...60)  then 'F'
#     when (60...70) then 'D'
#     when (70...80) then 'C'
#     when (80...90) then 'B'
#     else 'A'
#   end
# end

# HSH = {
#   90 => 'A',
#   80 => 'B',
#   70 => 'C',
#   60 => 'D',
#   0  => 'F'
# }

# def get_grade(grade1, grade2, grade3)
#   grade_sum = grade1 + grade2 + grade3
#   HSH.each { |boundary, letter| return letter if grade_sum >= 3 * boundary }
# end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(50, 50, 95, 23, 47) == "F"
p get_grade(60.1)
