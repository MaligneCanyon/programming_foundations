# inputs:
# - none
# outputs:
# - odd numbers, each printed on a separate line
# reqs:
# - print all odd nums btwn 1 and 99
# rules:
# - print each num on a sep line
# struct:
# -numeric
# algo:
# - from 1 to 99
#   - print the num
#   - incr by 2

1.step(by:2, to:99) { |num| puts num }
# (1..99).each { |v| puts v if v.odd? }
