def stringy (num, option=1)
  str = option.to_s
  1.upto(num-1) do |v|
    #str << (v.odd? ? "0" : "1") # base case
    str << (v.odd? ? (option == 1 ? "0" : "1") : (option == 1 ? "1" : "0"))
  end
  #puts str
  str
end

# puts stringy(6)
# puts stringy(9)
# puts stringy(4)
# puts stringy(7)

puts stringy(6, 0) == '010101'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
