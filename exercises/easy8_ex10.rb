def center_of(str)
  center = str.size / 2
  str.size.odd? ? str[center] : str[center - 1..center]
end

p center_of('the Universe')

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
