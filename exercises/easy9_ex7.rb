# inputs:
# - String
# outputs:
# - String
# reqs:
# - reformat a str
# rules:
# - none
# struct:
# - String
# algo:
# - split the str into words
# - build a new str
# - rtn the str

# def swap_name(str)
#   arr = str.split
#   new_str = arr[1] + ', ' + arr[0]
# end

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
