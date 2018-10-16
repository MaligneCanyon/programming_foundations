# inputs:
# - prompt for a float (bill amount)
# - prompt for a float (tip percentage)
# outputs:
# - print string
# reqs:
# - prompt for an amount
# - prompt for a tip percentage
# - output a sting showing the tip amt
# - output a sting showing the total amt
# rules:
# - none
# struct:
# - numeric
# - string
# algo:
# - prompt for an amount
# - prompt for a tip percentage
# - calc the tip
# - calc the total
# - output a sting showing the tip amt
# - output a sting showing the total amt

def prompt(msg)
  print "#{msg} "
end

prompt 'What is the bill?'
bill = gets.to_f
prompt 'What is the tip percentage?'
tip_percentage = gets.to_f
tip = bill * tip_percentage / 100
total = bill + tip

# annoyingly, this rounds to 1 decimal place:
# puts "The tip is $#{tip.round(2)}"
# puts "The total is $#{total.round(2)}"

# this works
# puts format("The tip is $%.2f", tip)
# puts format("The total is $%.2f", total)

# so does this
puts "The tip is $%.2f" % tip
puts "The total is $%.2f" % total
