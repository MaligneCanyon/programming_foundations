# inputs:
# - Array
# outputs:
# - Boolean
# reqs:
# - take an arr and a value as inputs
# - return T or F if the value is found or not found in the arr
# rules:
# - none
# struct:
# - Array (to iterate thru)
# algo:
# - for each element in the arr
#   - return T if current element == the search value
# - return F (search value not found)

# def include?(arr, num)
#   arr.each { |valu| return true if valu == num }
#   false # search value not found
# end

# alt method:
# algo:
# - rtn T or F based on whether any of the arr elements are equal to the search
#   value
def include?(arr,search)
  arr.any? { |v| v == search }
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
