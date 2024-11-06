def find_missing_number(arr)
  n = arr.max
  soma_esperada = (n * (n + 1)) / 2
  soma_real = arr.sum
  soma_esperada - soma_real
end

arr =  [1, 2, 3, 4, 6, 7, 8]
puts find_missing_number(arr)