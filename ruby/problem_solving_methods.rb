# Release 0: Simple Search
numbers = [11,23,37,42,51]
def search_array(arr, int)
  index = 0
  while index < arr.length
    if int == arr[index]
      p index
    end
    index += 1
  end
end
search_array(numbers, 99)

# Release 1: Calculate Fibonacci Numbers
def fib(num)
  fib_arr = [0,1]
  (num - 2).times { fib_arr.push(fib_arr[-1] + fib_arr[-2]) }
  # because we already have the 0 and 1 inside our array we do n - 2, so the .times loop runs 2 times less to account for the 0 and 1!!!
  fib_arr.last # we are printing the last value so we can test to verify for passing 100 as a parameter like the release challenge states.
end
p fib(100) # returns 218922995834555169026

# Release 2: Sort An Array
# Sort Array Pseudo Code
# Define a method that takes one array parameter.
  # Create a new array which will output the final sorted elements, immediately store the first element of the unsorted array.
  # Delete the first element of the unsorted array which was stored already in the final array.
  # Take the next element in the old array and compare it to the element in the new array.
    # Create a FOR element IN array loop which loops through each element in the unsorted array.
      # Create index position starting at 0.
      # Create WHILE loop with a condition stating while index is less than the length of the sorted array run this loop.
        # IF element from unsorted array is less than or equal to element of sorted array at index position.
          # INSERT at position of index the element from the unsorted array into the sorted array.
          # BREAK out once completed.
        # ELSIF position of index is equal to the length of the sorted array minus one.
          # INSERT at position of index plus one the element from the unsorted array into the sorted array.
          # BREAK out once completed.
        # END IF/ELSIF conditional statement.
        # Add one to the index.
      # END the WHILE loop.

def insertion_sort(arr)
  sort_arr = [arr[0]]
  arr.delete_at(0)
  for i in arr
    index = 0
    while index < sort_arr.length
      if i <= sort_arr[index]
        sort_arr.insert(index, i)
        break
      elsif index == sort_arr.length - 1
        sort_arr.insert(index + 1, i)
        break
      end
      index += 1
    end
  end
  sort_arr
end
unsorted_arr = [2, 6, 4, 5, 7, 4]
puts insertion_sort(unsorted_arr)













