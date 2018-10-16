# inputs:
# - sting
# outputs:
# - print msg
# reqs:
# - prompt for a string
# - count the number of chars (excluding spaces) in the str
# - output the result
# rules:
# - do not count spaces
# struct:
# - sting
# algo:
# - prompt for a string
# - scan the str and count the non-space chars
# - output the resulting count

def prompt(str)
  print "#{str} "
end

prompt("Please write word or multiple words:")
str = gets.chomp
# num = str.chars.reject {|char| char == ' '}.size
# num = str.scan(/[^ ]/).count
num = str.split.join.length
puts "There are #{num} characters in \"#{str}\"."


# Please write word or multiple words: walk
# There are 4 characters in "walk".


# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

