def oddities(arr1)
  arr2 = []
  arr1.each_with_index do |v,i|
    arr2 << v if i.even?
  end
  arr2
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
