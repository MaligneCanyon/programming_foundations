SQFEET = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.to_f
puts 'Enter the width of the room in meters:'
width = gets.to_f
area_meters = length * width
area_feet = area_meters * SQFEET
puts "The area of the room is #{area_meters.round(2)} square meters " \
  "(#{area_feet.round(2)} square feet)."
