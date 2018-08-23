# Please write word or multiple words: walk
# There are 4 characters in "walk".


# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

puts "Please write word or multiple words:"
str = gets.chomp
# num = str.chars.reject {|char| char == ' '}.size
num = str.split.join.length
puts "There are #{num} characters in \"#{str}\"."
