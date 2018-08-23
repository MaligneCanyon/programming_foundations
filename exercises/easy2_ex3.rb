puts "Enter the amount of the bill:"
bill = gets.to_f
puts "Enter the \% tip:"

tip_percent = gets.to_f
tip = bill * tip_percent / 100

# this rounds to 1 decimal place !
# puts "The tip is $#{tip.round(2)}"
# puts "The total is $#{(bill + tip).round(2)}"

# this works
# puts "The tip is $#{format("%.2f", tip)}"
# puts "The total is $#{format("%.2f", bill + tip)}"

# so does this
puts "The tip is $#{"%.2f" % tip}"
puts "The total is $#{"%.2f" % (bill + tip)}"
