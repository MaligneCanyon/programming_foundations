puts "Please enter an integer greater than 0:"
num = gets.to_i
puts "Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp

if choice == 's'
  #(1..num).each {|v| ans += v}
  ans = (1..num).reduce(:+)
  str = "The sum"
elsif choice == 'p'
  #(1..num).each {|v| ans *= v}
  ans = (2..num).reduce(:*)
  str = "The product"
else
  puts "Try again"
  exit
end
puts str << " of integers between 1 and #{num} is #{ans}."
