# inputs:
# - array (two or string elements)
# - hash (two keys, :title and :occupation, and related values)
# outputs:
# - string
# reqs:
# - combine the name, title and occupation data in an output string
# rules:
# - none
# datastruct:
# - array to hold title and occupation
# - string (for output)
# algo:
# - combine the strings in the input array to form a name string
# - obtain the data values from the hash
# - combine the values of the hash to form a titled_occupation string
# - combine the name and titled_occupation strings to form an output string

def greetings(arr, hash)
  name = arr.join(' ')
  titled_occupation = hash.values.join(' ')
  "Hello, #{name}! Nice to have a #{titled_occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
