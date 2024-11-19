def rearrange(arr, size)
  positive = 0
  negative = 1

  while true
    # Mover o ponteiro positivo para frente até encontrar um número negativo
    while positive < size && arr[positive] >= 0
      positive += 2
    end

    # Mover o ponteiro negativo para frente até encontrar um número positivo
    while negative < size && arr[negative] <= 0
      negative += 2
    end

    # Trocar elementos para corrigir suas posições
    if positive < size && negative < size
      arr[positive], arr[negative] = arr[negative], arr[positive]
    else
      # Sair do loop se algum índice ultrapassar o tamanho do array
      break
    end
  end
end

# Código principal
arr = [1, -3, 5, 6, -3, 6, 7, -4, 9, 10]
n = arr.length

rearrange(arr, n)

puts arr.join(" ")
