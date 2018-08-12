# input: str
# output: strs
# reqs:
#   1st and last line: plus sign, followed by str.size+2 minus signs, followed by plus sign
#   2nd and 2nd last line: pipe, followed by str.size+2 spaces, followed by pipe
#   middle line: pipe, followed by space, followed by str, followed by space, followed by pipe
# rules: print each output str

# datestruc: arr of strs


def print_in_box(str)
  arr = [
    '+' + '-'*(str.size + 2) + '+',
    '|' + ' '*(str.size + 2) + '|',
    '| ' + str + ' |'
  ]
  puts arr, arr[1], arr[0]
end


print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
