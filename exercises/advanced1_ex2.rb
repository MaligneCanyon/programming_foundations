# inputs:
# - Integer
# outputs:
# - String
# reqs:
# - print an 8-point (4-line) pattern (a series of spaces and stars) with max width
#   equal to the input Integer
# rules:
# - n == 9
#   i          0 1 2 3 4 5 6 7 8
#   lead space 0 1 2 3 0 3 2 1 0
#   stars      1 1 1 1 9 1 1 1 1  x3 (except for centreline)
#   mid space  3 2 1 0 0 0 1 2 3  x2
# - if k = (n - 1) / 2  (max distance from centreline)
#     if i < k
#       lead_space = i
#       stars = 1
#       mid_space = (k - 1) - i
#     elsif i == k
#       lead_space = 0
#       stars = n - 3
#       mid_space = 0
#     else
#       lead_space = 2k - i
#       stars = 1
#       mid_space = i - k - 1
# - print n strings
# algo:
# - calc k
# - for each output string
#     build the string from space and star chars
#     output the string

def print_str(lead_space, stars, mid_space)
  puts str = (stars > 1) ? '*' * stars :
    ' ' * lead_space << '*' << ' ' * mid_space << '*' << ' ' * mid_space << '*'
end

def star(n)
  k = (n - 1) / 2
  n.times do |i|
    if i < k
      lead_space = i
      stars      = 1
      mid_space  = k - 1 - i
    elsif i == k
      lead_space = 0
      stars      = n
      mid_space  = 0
    else
      lead_space = 2 * k - i
      stars      = 1
      mid_space  = i - k - 1
    end
    print_str(lead_space, stars, mid_space)
  end
  puts # adds a blank line
end

star(7)
# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)
# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *


# ALT VERSION
# inputs:
# - Integer
# ouputs:
# - printed pattern
#   - rows of alternating star and space syms
# reqs:
# - display an 8-pt star pattern in an n-by-n grid
# - n is an odd int arg, n >= 7
# rules:
# - n rows of n chars
#   - if n == 7, for each row 0 to 6, the row is comprised of
#     spaces(1)  0, 1, 2, x, 2, 1, 0
#     a star
#     spaces(2)  2, 1, 0, x, 0, 1, 2
#     a star
#     spaces(2)
#     a star
#     spaces(1)
#   - no need to printout the last set of spaces
#   - center row is a row of n stars
#   - above the center row,
#     spaces1 = row
#     spaces2 = (n-3)/2 - row
#   - below the center row,
#     spaces1 = n-1-row
#     spaces2 = (n-3)/2 - (n-1-row)
# struct:
# - String
# algo:
# - determine the middle row
# - for each row
#   - build the str
#   - printout the str

# def stars(n)
#   midrow = n / 2
#   (0...n).each do |row|
#     if row == midrow
#       puts '*' * n
#     else
#       spaces1 = row < midrow ? row : n - 1 - row
#       spaces2 = (n-3)/2 - spaces1
#       substr = ' ' * spaces1 + '*' + ' ' * spaces2
#       puts substr + '*' + substr.reverse
#     end
#   end
# end
