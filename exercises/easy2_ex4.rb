puts "How old are you ?"
age = gets.to_i
puts "At what age would you like to retire ?"
age_retire = gets.to_i

years_to_go = age_retire - age

year = Time.now.year

puts "It's #{year}; you will retire in #{year + years_to_go}"
puts "Only #{years_to_go} more years !"
