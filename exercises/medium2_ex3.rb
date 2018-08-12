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

# leverage easy7_ex2.rb
def letter_percentages(str)
  h = letter_case_count(str)
  h.each { |k, v| h[k] = v / str.size.to_f * 100 }
  p h
  h
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
