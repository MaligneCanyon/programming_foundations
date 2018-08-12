name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# should puts 'BOB, BOB'
# upcase! mutates the data; both 'name' and 'save_name' point to the same data
