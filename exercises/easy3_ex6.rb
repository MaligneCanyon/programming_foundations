# four possibilities
# a == true, b == true
# a == true, b == false *
# a == false, b == true *
# a == false, b == false

def xor?(a, b)
  a != b
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
puts xor?(5, 4) == true
puts xor?(5, 5) == false
