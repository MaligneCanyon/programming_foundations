# just for fun ...
def is_an_ip_number?(str)
  str.to_i.to_s == str
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words.size == 4
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      return false unless is_an_ip_number?(word)
    end
    true
  else
    false
  end
end

p dot_separated_ip_address?("10.4.5.11")
p dot_separated_ip_address?("4.5.5")
p dot_separated_ip_address?("1.2.3.4.5")
p dot_separated_ip_address?("10.4.five.11")
