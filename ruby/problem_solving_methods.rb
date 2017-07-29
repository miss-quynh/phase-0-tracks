#RELEASE 0

def search_integers(array, x)
  result = nil
  index = 0
    array.each do |integer|
      if integer == x
        puts index
      else
      end
    index += 1
    end
  result
end

array = [2, 4, 6, 8, 10]
search_integers(array, 4)
search_integers(array, 15)




#RELEASE 1

p search_integers(array, 5)

def fib(integer)
  array = [2, 4, 6, 8, 10]
  until array.length == integer
    array << array[-1] + array[-2]
  end
  array
end

p fib(50)




#RELEASE 2

def bubblesort(arr)
  result = false
  until result == true
    result = true
    arr.length.times do |index|
      if index != arr.length - 1
        if arr[index] > arr[index + 1]
          arr[index], arr[index + 1] = arr[index + 1], arr[index]
          result = false
        end
      end
    end
  end
  puts arr
end

example_array = [1, 2, 4, 6, 5, 3]

bubblesort(example_array)