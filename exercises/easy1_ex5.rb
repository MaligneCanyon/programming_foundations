def reverse_sentence (str)
  str.split(" ").reverse!.join(" ")
end

# puts reverse_sentence('')
# puts reverse_sentence('Hello World')
# puts reverse_sentence('Reverse these words')

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'