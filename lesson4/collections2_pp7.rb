statement = "The Flintstones Rock"
hsh = {}
letters = ('a'..'z').to_a + ('A'..'Z').to_a
statement.each_char do |char|
  if letters.include?(char)
    if hsh.key?(char) # 'if hsh[char]' works too
      hsh[char] += 1
    else
      hsh[char] = 1
    end
  end
end
p hsh.sort.to_h
