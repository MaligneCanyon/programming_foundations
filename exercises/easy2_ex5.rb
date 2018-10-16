# # inputs:
# - prompt for a string (name)
# outputs:
# - print string
# reqs:
# - prompt for a username
# - output a string
#   - if the username ends with an !, output an uppercase string
#   - else output a lowercase string
# rules:
# - none
# struct:
# - string
# algo:
# - prompt for a username
# - chk the last char of the username
# - if the last char is a !,  output an uppercase string
# - else output a lowercase string


def sl_prompt(msg)
  print "#{msg} "
end

sl_prompt 'What is your name?'
moniker = gets.chomp
if moniker[-1] == '!'
  puts "HELLO #{moniker[0...-1].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{moniker}."
end
