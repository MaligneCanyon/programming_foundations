# inputs:
# - string
# outputs:
# - string
# reqs:
# - take a str as input
# - rtn a str w/ all non-alpha chars replaced by spaces
# - replace runs of spaces w/ a single space
# rules:
# - none
# struct:
# - string
# algo:
# - use gsub and a regex to replace non-alpha chars w/ spaces
# - use squeeze to replace runs of spaces w/ a single space
# - rtn the str

# def alpha_str
#   (('a'..'z').to_a + ('A'..'Z').to_a).join
# end

# def cleanup(str)
#   new_str = ''
#   str.each_char { |char| new_str << (alpha_str.include?(char) ? char : ' ') }
#   new_str.squeeze
# end

def cleanup(str)
  str.gsub(/[^a-z]/i, ' ').squeeze
end

p cleanup("---what's my +*& line?") == ' what s my line '
p cleanup("---What's My +*& linE?") == ' What s My linE '
p cleanup("@t43'3h5e*www.i&z,a$$$rrr|d00o,f,[o];z?.") == ' t h e w i z a r d o f o z '
