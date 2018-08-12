def sum (num)
  num.to_s.split("").map!(&:to_i).reduce(:+)
end

# p sum(23)
# p sum(496)
# p sum(123_456_789)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
