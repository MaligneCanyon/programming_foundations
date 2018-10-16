# inputs:
# - Array (2+ elements)
# - Hash (2 key:value pairs)
# outputs:
# - String (formatted text)
# reqs:
# - take 2 args
#   - arr w/ 2+ elements representing a name
#   - hsh w/ 2  elements representing a title and occupation
# - rtn a greeting that uses the full name, title and occupation
# rules:
# - output str format
#   'Hello, arr[0] arr[1] arr[2]! Nice to have a hsh[:title] hsh[:occupation] around.'
# struct:
# - String (formatted output)
# algo:
# - build the str using the arr and hsh values
# - rtn the str

def greetings(arr, hsh)
  'Hello, #{arr.join(' ')}! Nice to have a #{hsh[:title]} #{hsh[:occupation]} around.'
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
