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


  while l < left.length && r < right.length
    if left[l] <= right[r]
      merged << left[l]
      l += 1
    else
      merged << right[r]
      r += 1
    end
  end


  while l < left.length
    merged << left[l]
    l += 1
  end


  while r < right.length
    merged << right[r]
    r += 1
  end

  merged
end

arr = [38, 27, 43, 10]
result = merge_sort(arr)
p result
