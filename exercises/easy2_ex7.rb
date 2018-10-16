# inputs:
# - none
# outputs:
# - even numbers, each printed on a separate line
# reqs:
# - print all even nums btwn 1 and 99
# rules:
# - print each num on a sep line
# struct:
# -numeric
# algo:
# - from 2 to 98
#   - print the num
#   - incr by 2

2.step(by:2, to:98) { |num| puts num }
# (1..99).each { |v| puts v if v.even? }
