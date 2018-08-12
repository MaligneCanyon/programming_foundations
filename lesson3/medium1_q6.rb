# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end

# use a mutating method on 'a_string_param' instead of a re-assignment
def tricky_method(a_string_param, an_array_param)
  a_string_param << " rutabaga" # add an extra space for legibility
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
