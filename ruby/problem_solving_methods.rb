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
  # last_num = fib_arr[-1]
  # second_to_last = fib_arr[-2]
  # next_num = last_num + second_to_last
  (num - 2).times do |num|
    fib_arr.push(fib_arr[-1] + fib_arr[-2])
  end
  p fib_arr.last
end
fib(100)