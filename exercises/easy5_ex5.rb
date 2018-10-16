# input: str
# output: str
# reqs
# - str with a non-alpha chars replaced by a space
# - assume lower-case strs only
# rules
# - multi-non-alpha segments replaced by a single space

def alpha_str
  (('a'..'z').to_a + ('A'..'Z').to_a).join
end

def cleanup(str)
  alpha = alpha_str
  new_str = ''
  str.each_char { |char| new_str << (alpha.include?(char) ? char : ' ') }
  new_str.squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---What's My +*& linE?") == ' What s My linE '
p cleanup("@t43'3h5e*www.i&z,a$$$rrr|d00o,f,[o];z?.") == ' t h e w i z a r d o f o z '
