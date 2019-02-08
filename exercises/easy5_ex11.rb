def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p "hello world".object_id
p spin_me("hello world").object_id # "olleh dlrow".object_id
p "hello world".object_id == spin_me("hello world").object_id # false

# - str.split creates an arr
# - individual arr elems are then operated on (which has nothing to do w/ the original str)
# - a new str obj is created by joining the arr elems
# - the new str is then returned by the spin_me method
# - the original str is not mutated
