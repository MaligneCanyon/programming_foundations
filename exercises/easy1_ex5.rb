# inputs:
# - String
# outputs:
# - String
# reqs:
# - return the input str with the words in the reverse order
# - 'return the same str', i.e. mutate the original str ??? assume no
# rules:
# - none
# struct:
# - Array (to hold a list of words in the str)
# algo:
# - split the str into an arr of words
# - reverse the arr elements
# - join the arr elements (a new str)
# - return the new str

def reverse_sentence(str)
  str.split(' ').reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
