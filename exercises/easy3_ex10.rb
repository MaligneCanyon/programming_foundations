def palindromic_number?(num)
  str = num.to_s
  str.reverse == str
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true