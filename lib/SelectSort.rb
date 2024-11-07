def select_sort(arr)
  n = arr.length

  for i in 0...(n - 1)
    min_index = i

    for j in (i + 1)...n
      if arr[j] < arr[min_index]
        min_index = j
      end
    end

    if min_index != i
      arr[i], arr[min_index] = arr[min_index], arr[i]
    end
  end

  arr
end

arr = [64, 25, 12, 22, 11]
p select_sort(arr)
