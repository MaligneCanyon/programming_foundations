puts "Enter the amount of the bill:"
bill = gets.to_f
puts "Enter the \% tip:"

tip_percent = gets.to_f
tip = bill * tip_percent / 100

# puts "The tip is $#{tip.round(2)}" # rounds to 1 decimal place !
# puts "The total is $#{(bill + tip).round(2)}"

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", bill + tip)}"
