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
