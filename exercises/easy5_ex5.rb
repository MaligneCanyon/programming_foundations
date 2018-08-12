# input: str
# output: str
# reqs
# - str with a non-alpha chars replaced by a space
# - assume lower-case strs only
# rules
# - multi-non-alpha segments replaced by a single space


# def cleanup(str)
#   new_str = ''
#   last_char = nil
#   str.downcase.each_char do |c|
#     if c.between?('a','z')
#       last_char = c
#       new_str << c
#     else
#       new_str << ' ' unless last_char == ' '
#       last_char = ' '
#     end
#     p c, last_char, new_str
#   end
#   new_str
# end

def cleanup(str)
  new_str = ''
  str.downcase.each_char do |c|
    new_str << (c.between?('a','z') ? c : ' ')
    #p c, new_str
  end
  new_str.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("what the +++  f**k  +++ are you talkin' about ?") == 'what the f k are you talkin about '
p cleanup("@t43'3h5e*www.i&z,a$$$rrr|d00o,f,[o];z?.") == ' t h e w i z a r d o f o z '
