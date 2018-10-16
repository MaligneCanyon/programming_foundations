# inputs:
# - Integer (salary)
# - Boolean (T or F flag re: bonus payout)
# outputs:
# - Integer (bonus)
# reqs:
# - return the bonus for a given salary and payout flag
# rules:
# - bonus == salary / 2 if Boolean == T
# - bonus == 0 if Boolean == F
# struct:
# - numeric
# algo:
# - calc the bonus as follows
#   - if the Boolean == T
#     - bonus = salary / 2
#   - else bonus = 0
# - return the bonus

def calculate_bonus (salary, payout)
  payout ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
