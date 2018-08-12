puts "What is your name?"
moniker = gets.chomp
str = "Hello "
if moniker.end_with?("!")
  moniker.chomp!("!")
  str << "#{moniker}, why are we screaming ?"
  str.upcase!
else
  str << "#{moniker}"
end
puts str
