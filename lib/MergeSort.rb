def merge_sort(arr)
  # Caso base: se o array tem 0 ou 1 elemento, ele já está "ordenado"
  return arr if arr.length <= 1

  mid = arr.length / 2

  left = merge_sort(arr[0...mid])  # Da posição 0 até antes do 'mid'
  right = merge_sort(arr[mid..])   # Da posição 'mid' até o final

  merge(left, right)
end

def merge(left, right)
  merged = []  # Array para armazenar os elementos mesclados
  l = 0        # Ponteiro para a lista 'left'
  r = 0        # Ponteiro para a lista 'right'

  # Enquanto houver elementos em ambas as listas
  while l < left.length && r < right.length
    if left[l] <= right[r]
      merged << left[l]  # Adiciona o menor elemento
      l += 1             # Move o ponteiro da lista 'left'
    else
      merged << right[r] # Adiciona o menor elemento
      r += 1             # Move o ponteiro da lista 'right'
    end
  end

  # Adiciona elementos restantes da lista 'left'
  while l < left.length
    merged << left[l]
    l += 1
  end

  # Adiciona elementos restantes da lista 'right'
  while r < right.length
    merged << right[r]
    r += 1
  end

  merged # Retorna a lista mesclada
end

arr = [38, 27, 43, 10]
result = merge_sort(arr)
p result
