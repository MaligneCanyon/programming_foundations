# inputs:
# - Array
# outputs:
# - Hash
# reqs:
# - count the num of occurences of each element in the input arr
# rules:
# - none
# struct:
# - Hash (to hold a list of dif elements and the number of each)
# algo:
# - init the output hash
# - for each element in the input arr
#   - if the element exists as a key in the output hash
#     - increment the value for the key
#   - else
#     - create a key for the element
#     - set the value to 1 for the key
# - output the hash key:value pairs

def count_occurrences (arr)
  hsh = {}
  arr.each do |str|
    if hsh[str]
      hsh[str] += 1
    else
      hsh[str] = 1
    end
  end
  hsh.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
count_occurrences(vehicles)
