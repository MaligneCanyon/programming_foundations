# inputs:
# - Integer
# outputs:
# - String
# reqs:
# - print a diamond pattern (a series of spaces and stars) with max width
#   equal to the input Integer
# rules:
# - n == max width == number of rows
# - i == current row number
# - if n == 9
#   i      0 1 2 3 4 5 6 7 8
#   spaces 4 3 2 1 0 1 2 3 4
#   stars  1 3 5 7 9 7 5 3 1
# - if k = (n - 1) / 2
#     if i <= k
#       spaces = k - i
#       if n is odd
#         stars  = 2i + 1
#       else
#         stars  = 2i + 2
#     else
#       spaces = i - k
#       stars  = n - 2(i - k)
# - print 2k + 1 strings
# - should work if n is even also
# algo:
# - calc k
# - calc the number of strings to print
# - for each output string
#     build the string from space and star chars
#     output the string

HOLLOW = true

def print_str(spaces, stars)
  if HOLLOW && stars > 2
    puts ' '*spaces + '*' + ' '*(stars - 2) + '*'
  else
    puts ' '*spaces + '*'*stars
  end
end

def diamond(n)
  k = (n - 1) / 2
  num_strings = 2 * k + 1
  # p "n == #{n}, k == #{k}, num_strings == #{num_strings}"
  num_strings.times do |i|
    if i > k
      num_spaces = i - k
      num_stars  = n - 2 * (i - k)
    else
      num_spaces = k - i
      num_stars  = 2 * i + (n.even? ? 2 : 1)
    end
    # puts "i == #{i}, num_spaces == #{num_spaces}, num_stars == #{num_stars}"
    print_str(num_spaces, num_stars)
  end
  puts # adds a blank line
end


# SIMPLER VERSION
# rules:
# - n is an odd int
# - n rows
# - center row = (n + 1) / 2
# - above (or at) the center row:
#   - k = row
# - below (or at) the center row:
#   - k = n - row + 1
# - (n - 1) / 2 - (k - 1) spaces
# - (k - 1) * 2 + 1 = 2k - 1 asts
# struct:
# - str
# algo:
# - calc the center row
# - for each row
#   - calc the num of spaces and asts
#   - build the str
#   - puts the str
  # def diamond(n)
  #   center = (n + 1) / 2
  #   (1..n).each do |row|
  #     k = (row > center) ? n - row + 1 : row
  #     spaces = (n - 1) / 2 - (k - 1)
  #     asts = 2 * k - 1
  #     puts ' '*spaces + '*'*asts
  #   end
  # end


diamond(1)
# *

diamond(3)
#  *
# ***
#  *

diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

diamond(2)
# **

diamond(4)
#  **
# ****
#  **

diamond(8)
#    **
#   ****
#  ******
# ********
#  ******
#   ****
#    **
