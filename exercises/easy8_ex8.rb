def double_consonants(str)
  dble_chars = 'bcdfghjklmnpqrstvwxyz'
  str.chars.map! { |chr| dble_chars.include?(chr.downcase) ? chr * 2 : chr }.join
end

p double_consonants('String')
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
