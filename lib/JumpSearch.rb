def jump_search(arr, x)
  l = 0
  r = arr.length - 1
  step = 4

  while l <= r && arr[[l + step, r].min] < x
    l += step
  end

  for i in l..[l + step, r].min
    return i if arr[i] == x
  end

  -1
end

arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x = 55
result = jump_search(arr, x)

puts result != -1 ? "Elemento encontrado no índice #{result}" : "Elemento não encontrado"
