# inputs:
# - Array (of strings)
# outputs:
# - Array (of strings)
# reqs:
# - take an arr of strs and return an arr of the same strs w/ vowels removed
# - account for upper and lower case
# rules:
# - none
# struct:
# - Array
# algo:
# - for each array element
#   - map the str element (sans vowels) to a new array
#     - use regex to sub null chars for vowels
# - return the new array


def remove_vowels (arr)
  arr.map { |str| str.gsub(/[aeiou]/i,'') }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
