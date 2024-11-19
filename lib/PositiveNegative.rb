def rearrange(arr)
  # Particionar: mover positivos para o início e negativos para o final
  left = 0
  right = arr.length - 1

  while left <= right
    if arr[left] >= 0
      left += 1
    elsif arr[right] < 0
      right -= 1
    else
      arr[left], arr[right] = arr[right], arr[left]
      left += 1
      right -= 1
    end
  end

  # Após o particionamento, `left` é o índice do início dos negativos
  pos = 0   # Ponteiro para os positivos (pares)
  neg = left # Ponteiro para os negativos (ímpares)

  # Alternar elementos positivos e negativos
  while pos < arr.length && neg < arr.length && arr[pos] >= 0
    arr[pos], arr[neg] = arr[neg], arr[pos]
    pos += 2
    neg += 1
  end

  arr
end

# Exemplo
arr = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]
result = rearrange(arr)
puts "Resultado: #{result.inspect}"
