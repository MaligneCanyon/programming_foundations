def real_palindrome?(str)
  str.downcase!
  new_str = ''
  str.each_char do |c|
    new_str << c if c.between?('a','z') || c.between?('0','9')
  end
  #p new_str
  new_str.reverse == new_str
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
