# inputs:
# - the String to print
# - a positive Integer indicating the num of times to print the str
# outputs:
# - none
# reqs:
# - print input str the specifiec number of times
# rules:
# - none
# algo:
# - num times print the str

def repeat (str, num)
  num.times { puts str }
end

repeat('Hello', 3)
