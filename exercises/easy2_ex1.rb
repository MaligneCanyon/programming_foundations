puts "enter a name"
moniker = gets.chomp
moniker = "Teddy" if moniker == ""
puts "#{moniker} is #{rand(20..200)} years old!"
