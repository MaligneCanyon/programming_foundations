# -'password' is only scoped locally w/i the set_password and verify_password
#   methods; its value is undefined when the line
#     if input == password
#   is encountered
# - assign the return value from set_password to the 'password' variable, and
#   pass 'password' as a parameter to verify_password

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  # password = new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
  # set_password
end

verify_password(password)
# verify_password
