# inputs:
# - a Rational Number (two ints reping the num and denom of a rat num)
# outputs:
# - Array (an arr of denoms that are part of an Egyptian Fraction rep of the num)
# reqs:
# - take a Rational Number
# - rtn an arr reping an Egyptian Fraction rep of the num
# struct:
# - Array (to hold denoms)
# algo:
# - init the output arr to []
# - init a sum at 0
# - init the denom at 1
# - while the sum is < rat
#   - temporarily add rat(1/denom) to the sum
#   - if the sum > rat
#     - throw away the new sum
#   - else
#     - sum = new sum
#     - copy denom to the output arr
#   - increment the denom

def egyptian(rat_num)
  arr = []
  sum = 0
  temp_sum = sum
  denom = 1
  while sum < rat_num && denom < 1_000_000
    temp_sum += Rational(1, denom)
    if temp_sum > rat_num # overshot
      temp_sum = sum # reset
    else
      sum = temp_sum
      arr << denom
    end
    # p "denom = #{denom}, sum = #{sum}, arr = #{arr}"
    denom += 1
  end
  arr
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# inputs:
# - Array (an arr of denoms that are part of an Egyptian Fraction rep of the num)
# outputs:
# - a Rational Number (two ints reping the num and denom of a rat num)
# reqs:
# - take an arr reping an Egyptian Fraction rep of the num
# - rtn a Rational Number
# struct:
# - num (to hold sum of fractional elements)
# algo:
# - init a sum at 0
# - for each element in the arr
#   - add rat(1/denom) to the sum
# - rtn the sum

def unegyptian(arr)
  sum = 0
  arr.each { |denom| sum += Rational(1, denom) }
  sum
end

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
