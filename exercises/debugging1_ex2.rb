# - the 'chars' method breaks the 'name' into an array of chars
#   'upcase' upcases the chars, but the chars are never rejoined
#   to form a str
# - alternatively, can upcase! 'name' directly

def shout_out_to(name)
  # name = name.chars.each { |c| c.upcase! }.join
  name.upcase!
  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'
