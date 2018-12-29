# Write function scramble(str1,str2) that returns true if a portion of str1 characters can be
# rearranged to match str2, otherwise returns false.
#
# For example:
# str1 is 'rkqodlw' and str2 is 'world' the output should return true.
# str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
# str1 is 'katas' and str2 is 'steak' should return false.
#
# Only lower case letters will be used (a-z). No punctuation or digits will be included.


# p scramble('javaass', 'jjss') == false
# p scramble('rkqodlw','world') == true
# p scramble('cedewaraaossoqqyt','codewars') == true
# p scramble('katas','steak') == false
# p scramble('scriptjava','javascript') == true
# p scramble('scriptingjava','javascript') == true


# inputs:
# - str x2
# outputs:
# - boolean
# reqs:
# - determine whether all str2 chars can be found in the str1 chars
# rules:
# - can only use a str1 char once
# struct:
# - arr
# algo:
# - split str1 into an arr of chars
# - for each char in str2
#   - if the char can be found in str1
#     - delete the char from str1
#       - get the ndx of the char in arr
#       - delete the char at the ndx
#   - else
#     - rtn F
# - rtn T (end of str reached and all chars found)

def scramble(str1, str2)
  arr = str1.chars
  str2.chars.each do |char|
    # p char
    if arr.include?(char)
      # arr.delete(char) # deletes all instances
      ndx = arr.index(char)
      arr.delete_at(ndx)
    else
      return false
    end
    # p arr
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true
