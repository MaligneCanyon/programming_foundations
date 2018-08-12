def select_fruit(hsh)
  new_hsh = {}
  hsh.each {|k, v| new_hsh[k] = v if v == 'Fruit'}
  new_hsh
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
