# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

puts "Please write word or multiple words:"
str = gets.chomp
num = str.split.join.length
puts "There are #{num} characters in \"#{str}\"."
