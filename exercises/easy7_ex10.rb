# inputs:
# - String
# outputs:
# - String
# reqs:
# - rtn the 2nd last word in the input str
# rules:
# - the input str contains at least two words
# struct:
# - Array (to hold the words in the str)
# algo:
# - split the str into words
# - return the 2nd last word

def penultimate(str)
  str.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
