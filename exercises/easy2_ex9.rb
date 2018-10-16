name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
# should print 'Alice' and 'Bob'
# 'name' and 'save_name' point to different string objects

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# should print 'BOB' and 'BOB'
# upcase! mutates the data; both 'name' and 'save_name' point to the same data
