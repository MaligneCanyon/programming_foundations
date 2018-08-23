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
  str = if HOLLOW && stars > 2
          ' ' * spaces << '*' << ' ' * (stars - 2) << '*'
        else
          ' ' * spaces << '*' * stars
        end
  puts str
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
