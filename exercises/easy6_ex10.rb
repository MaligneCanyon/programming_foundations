# inputs:
# - Integer (n rows & n stars in last row)
# outputs:
# - none (print pattern)
# reqs:
# - take a positive int
# - display a right triangle (composed of stars)
# - hypotenuse should have one end at lower-left, one end at upper-right
# rules:
# - n rows composed of spaces and stars
#   ____*
#   ___**
#   __***
#   _****
#   *****
# - spaces == n - row
#   stars  == row
# struct:
# - String
# algo:
# - for each of 1 to n rows
#   - build a str with (n - row) spaces, followed by row stars
#   - puts the str

def triangle(n)
  (1..n).each { |row| puts ' ' * (n - row) + '*' * row }
end

# def triangle(n)
#   counter = n - 1
#   n.times do
#     str = ' '*counter + '*'*(n - counter)
#     puts str
#     counter -= 1
#   end
# end

triangle(5)
#     *
#    **
#   ***
#  ****
# *****

triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
