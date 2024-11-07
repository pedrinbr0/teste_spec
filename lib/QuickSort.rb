def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample

  l = arr.select { |x| x < pivot }
  r = arr.select { |x| x > pivot }
  middle = arr.select { |x| x == pivot }

  quick_sort(l) + middle + quick_sort(r)
end

arr = [10, 7, 8, 9, 1, 5]
p quick_sort(arr)