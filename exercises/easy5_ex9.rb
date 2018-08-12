# input: str
# output: str
# reqs: del duplicate consecutive chars
# rules: del char if char==char_last

# datastruc: str


def crunch (str)
  char_last = ''
  new_str = ''
  str.each_char do |char|
    if char_last != char
      new_str << char
      char_last = char
    end
  end
  new_str
end


p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
