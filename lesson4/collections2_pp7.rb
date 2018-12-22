statement = "The Flintstones Rock"
hsh = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

# statement.each_char do |char|
#   if letters.include?(char)
#     if hsh.key?(char) # 'if hsh[char]' works too
#       hsh[char] += 1
#     else
#       hsh[char] = 1
#     end
#   end
# end
# p hsh.sort.to_h

letters.each do |letter|
  num = statement.scan(letter).count
  hsh[letter] = num if num.positive?
end
p hsh
