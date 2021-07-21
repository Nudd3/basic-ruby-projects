def bubble_sort(array)
  n = array.length
  while true
    swapped = false

    (n - 1).times do |i|
      if (array[i] > array[i + 1])
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  array
end

def bubble_sort_with_comments(array)
  n = array.length

  while true
    p array
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        p "#{array[i + 1]} and #{array[i]} swapped places"
        swapped = true
      end
    end

    break unless swapped
  end

  array
end
p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort_with_comments([5, 4, 3, 2, 1, 0])
