# example:
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# input: none
# output: String
# reqs:
# - one-line prog
# - output str 10 times
# - indent subsequent strs 1 space to the right
# rules:
# - indent spaces == 0..9
# datastruct: String
# algo:
# - 10 times, using a counter starting at 0,
# - print the string prepended by counter*' '

(0..9).each { |i| puts ' '*i << 'The Flintstones Rock!' }
