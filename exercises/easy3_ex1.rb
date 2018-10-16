# inputs:
# - integers (six ints)
# outputs:
# - print a msg
# reqs:
# - take 6 ints as input
# - print a msg indicating whether or not the 6th int appears amongst the other 5 ints
# rules:
# - none
# struct:
# - numeric
# - array (to hold the first 5 ints)
# algo:
# - create a hash w/ numbers and suffixes
# - 5 times
#   - prompt an int
#   - add the int to an arr
# - prompt for the 6th int
# - determine whether or not the 6th int is included in the arr
# - output the result

HSH = {
  1 => 'st',
  2 => 'nd',
  3 => 'rd',
  4 => 'th',
  5 => 'th'
}

def prompt(str)
  puts "==> Enter the " + str + " number:"
end

arr = []
(1..5).each do |num|
  prompt("#{num}#{HSH[num]}")
  arr << gets.to_i
end
prompt("last")
num = gets.to_i
ans = arr.include?(num) ? "appears" : "does not appear"
puts "The number #{num} #{ans} in #{arr}."


# arr = []
# (1..6).each do |v|
#   prompt = "==> Enter the " + case v
#     when 1
#       "1st"
#     when 2
#       "2nd"
#     when 3
#       "3rd"
#     when 4..5
#       "#{v}th"
#     else
#       "last"
#     end
#   puts prompt + " number:"
#   num = gets.to_i
#   if v < 6
#     arr << num
#   else
#     puts "The number #{num} " \
#       (arr.include?(num) ? "appears" : "does not appear") + " in #{arr}."
#   end
# end


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
