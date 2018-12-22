# inputs:
# - hsh
# outputs:
# - arr
# reqs:
# - take an input hsh
# - rtn an arr containing colours of fruit (capitalized) and the sizes of vegs
#   (upcased)
# - try not to mutate the original hsh !
# rules:
# struct:
# - arr
# algo:
# - init a new_arr to []
# - for each hsh value (elem)
#   - map the elem to the new_arr
#     - if the elem is a fruit
#       - for each color
#         - capitalize the color
#       - map the capitalized colors to the new_arr
#     - if the sub_hsh is a veg
#       - map the upcased size to the new_arr
# - rtn the new_arr

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

new_arr = hsh.values.map do |elem|
  elem[:type] == 'fruit' ? elem[:colors].map(&:capitalize) : elem[:size].upcase
end

p new_arr
p hsh
