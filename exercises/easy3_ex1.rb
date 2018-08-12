# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# The number 18 does not appear in [25, 15, 20, 17, 23].


arr = []
(1..6).each do |v|
  prompt = "==> Enter the " + case v
    when 1
      "1st"
    when 2
      "2nd"
    when 3
      "3rd"
    when 4..5
      "#{v}th"
    else
      "last"
    end
  puts prompt + " number:"
  num = gets.to_i
  if v < 6
    arr << num
  else
    puts "The number #{num} " +
      (arr.include?(num) ? "appears" : "does not appear") + " in #{arr}."
  end
end
