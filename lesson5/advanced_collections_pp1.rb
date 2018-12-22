arr = ['10', '11', '9', '7', '8']
arr.map { |str| str.to_i }.sort.reverse.map! { |int| int.to_s }
p arr # => ['10', '11', '9', '7', '8']

arr = ['10', '11', '9', '7', '8']
arr.map! { |str| str.to_i }.sort!.reverse!.map! { |int| int.to_s }
p arr # => ['11', '10', '9', '8', '7']

arr = ['10', '11', '9', '7', '8']
arr = arr.map { |str| str.to_i }.sort.reverse.map! { |int| int.to_s }
p arr # => ['11', '10', '9', '8', '7']


arr = ['10', '11', '9', '7', '8']
arr = arr.map(&:to_i).sort { |a, b| b <=> a }.map(&:to_s)
p arr # => ['11', '10', '9', '8', '7']

arr = ['10', '11', '9', '7', '8']
arr.sort! { |a, b| b.to_i <=> a.to_i }
p arr # => ['11', '10', '9', '8', '7']
