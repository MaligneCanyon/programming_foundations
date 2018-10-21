# inputs:
# - string
# outputs:
# - multiple strings
# reqs:
# - take a str
# - print the str w/i a box
# rules:
# - box has 5 lines, composed as follows
#   - 1st and last lines: plus sign, str.size+2 minus signs, plus sign
#   - 2nd and 2nd last lines: pipe, str.size+2 spaces, pipe
#   - middle line: pipe, space, input str, space, pipe
# struct:
# - array (to hold strs)
# algo:
# - build the first 3 lines and store them in the arr
# - print the 5 lines

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
