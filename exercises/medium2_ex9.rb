# inputs:
# - array (nums to be sorted)
# outputs:
# - none (we will mutate the input Array)
# reqs:
# - make multiple passes thru the input array
# - for each array element, if the next element is less than the current one, swap the elements
# - count the number of swaps
# - stop when a complete pass is done w/o swapping
# - mutate the input array as-we-go
# rules:
# - stop if number of swap events == 0 for a given pass
# struct:
# - array
# algo:
# - loop
#     initialize swap flag to false
#     for each element up to array.size - 2
#       if current element > next element
#         swap current element, next element
#         set swap flag to true
#     stop unless swap flag == true

# Note: after every pass, all elements after the last swap are sorted, and do not need to be checked again

def bubble_sort!(arr)
  loop do
    swapped = false
    0.upto(arr.size - 2) do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
      # p arr
    end
    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
