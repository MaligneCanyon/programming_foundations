arr = ['10', '11', '9', '7', '8']
arr.map! { |str| str.to_i }.sort!.reverse!.map! { |int| int.to_s }
p arr

arr = ['10', '11', '9', '7', '8']
arr.sort! do |a,b|
  b.to_i <=> a.to_i
end
p arr
