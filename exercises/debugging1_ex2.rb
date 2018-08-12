# the 'chars' method breaks the 'name' into an array of chars
# 'upcase' upcases the chars, but the chars are never rejoined
# into a str
def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
