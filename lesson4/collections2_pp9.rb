def titleize(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

words = "the flintstones rock"
p titleize(words)
p words # does not mutate original string
