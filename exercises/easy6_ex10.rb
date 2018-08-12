def triangle(n)
  counter = n - 1
  n.times do
    str = ' '*counter + '*'*(n - counter)
    puts str
    counter -= 1
  end
end

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
