# inputs:
# - none
# outputs:
# - print msg
# reqs:
# - output a msg indicating age of suspect 'Teddy'
# rules:
# - 20 <= age <= 200
# struct:
# - string
# algo:
# - calc the age
# - build and print the output string

puts "enter a name"
moniker = gets.chomp
moniker = "Teddy" if moniker == ""
age = rand(20..200)
puts "#{moniker} is #{age} years old!"
