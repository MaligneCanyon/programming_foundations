def letter_case_count(str)
  h = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |c|
    if c.between?('a', 'z')
      h[:lowercase] += 1
    elsif c.between?('A', 'Z')
      h[:uppercase] += 1
    else
      h[:neither] += 1
    end
  end
  h
end

p letter_case_count('abCdef 123')
p letter_case_count('AbCd +Ef')
p letter_case_count('123')

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
