hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = hsh.values
arr.map! do |k, v|
  if k[:type] == 'fruit'
    k[:colors].map! { |color| color.capitalize }
  else
    k[:size].upcase
  end
end
p arr == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
