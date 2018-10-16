# inputs:
# - prompt for an integer (age)
# - prompt for an integer (retirement age)
# outputs:
# - print string
# reqs:
# - prompt for an age
# - prompt for a desired retirement age
# - output a sting showing the current year and retirement year
# - output a sting showing how many years of work to go
# rules:
# - none
# struct:
# - numeric
# - string
# algo:
# - prompt for an age
# - prompt for a desired retirement age
# - calc the number of years of work to go
# - obtain the current year
# - calc the retirement year
# - output a sting showing the current year and retirement year
# - output a sting showing how many years of work to go

def prompt(msg)
  print "#{msg} "
end

prompt 'What is your age?'
age = gets.to_i
prompt 'At what age would you like to retire?'
retirement_age = gets.to_i
years_to_go = retirement_age - age
year = Time.now.year
retirement_year = year + years_to_go

puts "It's #{year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_go} years of work to go!"
