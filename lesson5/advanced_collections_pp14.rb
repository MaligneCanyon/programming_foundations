hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = []
hsh.each_value do |sub_hsh|
  arr << if sub_hsh[:type] == 'fruit'
    sub_hsh[:colors].map do |color|
      color.capitalize
    end
  else
    sub_hsh[:size].upcase
  end
end
p arr
